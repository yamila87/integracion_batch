SELECT polygonId id
FROM ampolygonGeo_h 
WHERE logIdTo != 0 
AND logIdTo > $logIdSyncMin
AND logIdTo <= $logIdSyncMax
