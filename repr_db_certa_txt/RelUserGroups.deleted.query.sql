SELECT userId, userGroupId groupId 
FROM userUserGroups_h
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax