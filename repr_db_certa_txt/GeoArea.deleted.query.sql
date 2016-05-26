SELECT areaId Id
FROM amareas_h 
WHERE logIdTo != 0 
AND logIdTo > $logIdSyncMin
AND logIdTo <= $logIdSyncMax
