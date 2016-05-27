SELECT *
FROM(
            select userId, userName, userPassword, userFullName, logIdFrom, dateFrom, logIdTo, dateTo, 
            row_number() over (order by logIdFrom, userId)  rn
            from users_h
            ) rn
WHERE rn BETWEEN $rownumMin AND $rownumMax