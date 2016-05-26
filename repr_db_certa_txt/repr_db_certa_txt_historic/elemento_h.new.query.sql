SELECT o.objectnameid id_ele,o.objectid id,o.SPRID fk_clase,0,
angle angulo,scale escala, SPRCOLOR color, o.nextid id_sig,
v.x X, v.y Y,
logIdFrom id_inc_desde, logIdTo id_inc_hasta, to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS')fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' )fec_inc_hasta
FROM sprobjects o ,SPROBJECTVERTIXS v
WHERE o.objectid = v.objectid
AND $logIdSyncMin < o.LOGIDFROM AND o.LOGIDFROM <= $logIdSyncMax
ORDER BY o.objectnameid , o.objectid, v.vertixorder