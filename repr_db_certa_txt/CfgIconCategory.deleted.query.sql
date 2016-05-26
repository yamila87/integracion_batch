SELECT categoryId id
FROM sprSymbGsCat_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax