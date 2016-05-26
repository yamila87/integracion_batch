SELECT o.objectid ElementId
FROM sprobjects o
WHERE o.OBJECTTYPE=12
AND o.LOGIDTO!=0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
