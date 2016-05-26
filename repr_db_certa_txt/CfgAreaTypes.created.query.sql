SELECT areaTypeId id, superAreaType parent, areaTypeName dsc, fsAreaTypeCode code
FROM amareaTypes_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax
