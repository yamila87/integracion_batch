SELECT gsId Id 
FROM sprSymbGs_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax