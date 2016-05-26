SELECT HUB,SUBREGION,REGION,UDN,COEF,SITIO,ATENCION,BASE,BBI_ESTADOS,BBI_FHAB,COOPERATIVAS,OM,MODULADOR,CONTROLADORA,
PROVISIONING,TOPOLOGIA,INFLUENCIA,ANTENA_WIMAX,INFLUENCIA_WIMAX,EMPRESA,MAX_VEL_ACC,FECHA_CAMBIO_VEL,MAX_VEL_ACC_OLD,
ID_BASE_OPEN,LOGIDFROM,DATEFROM,LOGIDTO,DATETO
FROM GIS_DET_HUB_H
WHERE (logIdFrom > $logIdSyncMin and logIdFrom <= $logIdSyncMax) or (logIdTo > $logIdSyncMin and logIdTo <= $logIdSyncMax)
order by logIdFrom, hub 