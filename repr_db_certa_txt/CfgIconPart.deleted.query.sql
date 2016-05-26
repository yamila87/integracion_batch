SELECT gsId iconId, gsPartId id, item idx
FROM sprSymbGsPart_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax