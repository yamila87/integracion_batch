SELECT objectidfrom ele_desde,objectidto ele_hasta,nodeindexfrom nodo_desde,nodeindexto nodo_hasta,
logidfrom inc_id_desde,logidto inc_id_hasta,
to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS')fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' )fec_inc_hasta
FROM sprtopology
WHERE logIdFrom > $logIdSyncMin and logIdFrom <= $logIdSyncMax