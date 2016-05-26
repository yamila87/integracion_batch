SELECT areaTypeId id
FROM amareaTypes_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax
