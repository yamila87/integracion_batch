SELECT userGroupId id, userGroupFullName description
FROM userGroups_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax
