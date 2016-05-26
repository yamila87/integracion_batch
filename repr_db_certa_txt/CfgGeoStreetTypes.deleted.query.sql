SELECT streetTypeId id, streetTypeName dsc 
FROM smstreetTypes_h
WHERE logIdTo != 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax