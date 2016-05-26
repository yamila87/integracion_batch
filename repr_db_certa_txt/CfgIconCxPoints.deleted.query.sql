SELECT sprid entityTypeId, nodeindex Idx, x, y, z
FROM nodepoints_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax