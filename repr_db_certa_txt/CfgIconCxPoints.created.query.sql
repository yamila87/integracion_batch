SELECT sprid entityTypeId, nodeindex idx, x, y, z
FROM nodepoints_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax