SELECT o.objectid NetElementId
FROM sprobjects o
WHERE o.OBJECTTYPE=11
AND o.LOGIDTO!=0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
