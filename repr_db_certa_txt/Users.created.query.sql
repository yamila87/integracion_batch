SELECT userId id, userName name, userPassword password, userFullName fullname
FROM users_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax