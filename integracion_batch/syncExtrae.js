//INFO: extrae datos para sincronizar la replica que usamos para dibujar los mapas, ejecutar ej. con cron en un servidor con acceso a CERTA
load("libsync.js");
//set_logLvlMax();
//*****************************************************************************
//S: CFG defaults
CfgFile= ARGV[1] || "../conf/extrae.certa.js" //U: path al archivo de configuracion, puede redefinir TODO!
CfgCx= { url: "CONFIGURAR DB URL", user: "CONFIGURAR DB USER", pass: "CONFIGURAR DB PASS" };
CfgDeltaPfx= "x_";
CfgLogIdPath= "../var/run/extraeCerta_logid.cnt"; //U: archivo donde guardamos el ultimo logid extraido
CfgCentinelPath= "../var/run/extraeCerta_finalizado"; //U: archivo que indica que ya no hay novedades
CfgLogSyncMin= 0; //U: minima revision que sincronizamos, si no queremos empezar de la primera
CfgLogSyncDeltaMax= 0; //U: maxima cantidad de versiones a extraer por ejecucion, XXX, OJO! a) no garantiza que no nos toque MUCHISIMA info en UNA sola revision, b) los queries se vuelven bastante mas costosos y lentos si tambien filtramos que la version no se pase de un maximo 
CfgOnlyVersioned= false; //U: si es true solo se extraeran las tablas que tienen filtro por logid, pero OJO que eso no incluiria cambios en las de iconos, entidades, etc.
CfgOnlyLastVersion= false; //Solo tomar la ultima revision, sin bajas. NFO: El filtro de vigentes esta actualmente en los queries
CfgTestRowCntMax= -1; //U: si es 0 o mas solo extrae esa cant de filas por tabla (para probar rapido)
CfgTestNoDb= false; //U: Para PRUEBAS, no conectarse a la base de datos
CfgAppendSql= ""; //U: Para PRUEBAS, agregar al WHERE ej "ROWNUM<10"
CfgPlanStepFrom= 0; //U: Para PRUEBAS, saltear los primeros pasos del plan
CfgPlanStepTo= -1; //U: Para PRUEBAS, parar antes del final del plan

//A: defaults de configuracion definidos
//=============================================================================
syncExtraerCfgLoad= function () {
	CxCfgFile= get_env("CXCFG");
	if (CxCfgFile) { 
		logm("NFO", 1, "SYNC EXTRAE CX CONFIG LOAD", CxCfgFile);
		load(CxCfgFile);
	}

	logm("NFO", 1, "SYNC EXTRAE CONFIG LOAD", CfgFile);
	load(CfgFile);
}

//A: configuracion actualizada desde archivo
//=============================================================================
syncExtraer= function (plan) {
	var hasGroupBy = true;
	var groupByObj ;
	
	if (typeof cfgGroupBy === 'undefined') {
		hasGroupBy = false;
	}
	
	logm("NFO",1,"CFG GROUP BY",cfgGroupBy);
	
	logm("NFO", 1, "SYNC EXTRAE CONFIG READY", { plan: plan });
	ensure_dir(CfgDeltaDir); //A: el dir para escribir los deltas existe
    logm("NFO", 1, "ANTES DE TOMAR LOGID", { CfgLogIdPath : CfgLogIdPath });
	var rownum_sync_anterior= contador_file(CfgLogIdPath, 0);  //OBTIENE EL ANTERIOR
	
//CfgLogSyncDeltaMax
	
	var rownum_sync_actual;
	if (rownum_sync_anterior == 0) {
		rownum_sync_actual=CfgLogSyncDeltaMax;
	} else {
		rownum_sync_actual= rownum_sync_anterior + CfgLogSyncDeltaMax ;
		rownum_sync_anterior = rownum_sync_anterior + 1;
	}
	//A: rownum_sync_actual tiene el nro hasta el que tenemos que sincronizar

	logm("DBG",1," ROW NUM ",{actual: rownum_sync_actual , anterior: rownum_sync_anterior});
	
	var manifest= {
		files: {},
		rownumMax: rownum_sync_actual,
		rownumMin: rownum_sync_anterior
	};
	//A: tenemos un "manifest" por default, para poner la lista de archivos extraidos que el que carga debe  sincronizar todos juntos o ninguno, en que version necesita estar antes y en cual va a quedar despues

	var manifestCfg= syncStdManifestCfg("InProgress", CfgDeltaDir, CfgDeltaPfx);
	if (exists_file(manifestCfg.outPath)) {
		logm("NFO", 3, "SYNC EXTRAE MANIFEST InProgress ENCONTRADO", manifestCfg);
		manifest= JSON.parse(get_file(manifestCfg.outPath));
		logm("NFO", 7, "SYNC EXTRAE MANIFEST InProgress DATA", { manifestCfg: manifestCfg, manifest: manifest});
		if (rownum_sync_actual!= manifest.rownumMax) {
			logm("ERR", 1, "SYNC EXTRAE MANIFEST InProgress maximo logId NO COINCIDE con el guardado en archivo", { esperado: rownum_sync_actual, enElManifest: manifest.rownumMax, manifestCfg: manifestCfg, manifest: manifest});
		}
	}
	//A: si ya estaba en el medio de una extraccion que se interrumpio, cargue el manifest para seguir desde donde habia dejado

	var hayParaExtraer= rownum_sync_anterior < rownum_sync_actual;

	cfgParams= {
		hayParaExtraer: hayParaExtraer,
		rownum_sync_anterior: rownum_sync_anterior,
		rownum_sync_actual: rownum_sync_actual,
		CfgLogSyncDeltaMax: CfgLogSyncDeltaMax,
		CfgSyncPlan: CfgSyncPlan
	};
	logm("NFO", 1, "SYNC EXTRAE PARAMS READY", cfgParams);

	//A: todos los parametros para esta ejecucion estan cargados
	//=============================================================================
	if (hayParaExtraer) {
			pasosPendientes= []; //U: si no logramos extraer algun paso lo ponemos aca

			if (!CfgTestNoDb) {
					dbTxAutoCommit(cx(), false);
					cx().setTransactionIsolation(cx().TRANSACTION_READ_COMMITTED);
			}
			//A: en una transaccion, para leer versiones inconsistentes de la base

			var planStepTo= CfgPlanStepTo >= 0 ? CfgPlanStepTo + 1 : plan.length;
			logm("DBG",5,"SYNC EXTRAE PASOS", {pasoDesde: CfgPlanStepFrom, pasoHasta: planStepTo, plan: plan});

			var noManifest= true;
			for (var i= CfgPlanStepFrom; i < planStepTo; i++) {
				var stepFile= plan[i];
				var groupByForStep={};

				if(hasGroupBy){					
					var stepArr = stepFile.split('.');					
					var key = stepArr[0];

					if(cfgGroupBy[key]){
						groupByForStep = cfgGroupBy[key];		
						logm("DBG",4,"GROUP FOR STEP:",groupByForStep);	
					}else{
						groupByForStep=null;
					}
				}
				
				if ((plan[i].search("deleted") == -1 && CfgOnlyLastVersion) || !CfgOnlyLastVersion) {
					if (manifest.files[stepFile] && exists_file(CfgDeltaDir + "/" + manifest.files[stepFile].fname)) {
						logm("DBG", 3, "SYNC EXTRAE PASO YA ESTABA COMPLETO", { idx: i, paso: stepFile, datosManifest: manifest.files[stepFile] });
					} else { //A: no esta el archivo correspondiente a este paso
						logm("DBG", 3, "SYNC EXTRAE PASO COMIENZA", { idx: i, paso: stepFile, path: CfgReprDbPfx + plan[i], });
						try {
							var r= syncStd(
									rownum_sync_actual, //U: logId MAXIMO se pondra en el nombre de archivo
									CfgReprDbPfx + plan[i],//U: path
									CfgDeltaDir,
									CfgDeltaPfx, 
									{ rownumMin: rownum_sync_anterior, rownumMax: rownum_sync_actual },
									CfgAppendSql,
									CfgTestNoDb,
									CfgOnlyVersioned && (rownum_sync_anterior > 0),
									CfgTestRowCntMax || -1,
									groupByForStep
							);
							//A: extrajimos los datos en el archivo, incluimos el logId maximo en el nombre

							manifest.files[stepFile]= r;
							syncStdManifest("InProgress", manifest, CfgDeltaDir, CfgDeltaPfx);
							logm("NFO", 3, "SYNC EXTRAE PASO COMPLETADO", r);
							noManifest= false;
						} catch (ex) {
							pasosPendientes.push({ paso: stepFile, idx: i });
							logmex("ERR", 1, "SYNC EXTRAE PASO", { step: i, query: stepFile, plan: plan }, ex);
						}
					}
				} 
				else { logm("NFO", 3, "SYNC EXTRAE PASO OMITIDO", plan[i]); }
				//A: termine de procesar UN paso
			}
			//A: recorrimos todos los pasos y o estaba el archivo o lo tratams de extraer
			cfgParams.PasosPendientes= pasosPendientes;
			if (pasosPendientes.length > 0) {
				logm("NFO", 1, "SYNC EXTRAE END, FALTAN PASOS", cfgParams); //XXX: CONFIG!
			} else {
				if (!noManifest) {
					manifestCfgOk= syncStdManifestCfg(rownum_sync_actual, CfgDeltaDir, CfgDeltaPfx);
					move_file(manifestCfg.outPath, manifestCfgOk.outPath, true); //A: sobreescribir
					contador_file(CfgLogIdPath, rownum_sync_actual, true);
					//A: actualizamos el contador para el proximo sync
				} else {
					logm("NFO", 1, "SYNC EXTRAE END, OK NADA PARA EXTRAER", cfgParams);
					contador_file(CfgCentinelPath, 1, true);
				}
			}
	} else {
		logm("NFO", 1, "SYNC EXTRAE END, OK NADA PARA EXTRAER", cfgParams);
		contador_file(CfgCentinelPath, 1, true);
	}
}
