SELECT o.OBJECTIDFROM,o.NODEINDEXFROM,o.OBJECTIDTO,o.NODEINDEXTO
FROM SPRTOPOLOGY o
WHERE o.OBJECTIDFROM>o.OBJECTIDTO AND o.TOPOLOGYTYPE=0
AND o.LOGIDTO!=0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
