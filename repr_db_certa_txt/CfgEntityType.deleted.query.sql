SELECT sprid id
FROM sprEntities_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax