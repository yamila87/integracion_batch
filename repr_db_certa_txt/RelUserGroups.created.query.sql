SELECT userId, userGroupId groupId 
FROM userUserGroups_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax