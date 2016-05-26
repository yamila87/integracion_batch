SELECT areaId geoAreaId, userGroupId groupId 
FROM areaUserGroups_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax