UPDATE smstreets_news 
SET tracker_flag = 0 
WHERE streetId 
IN (SELECT streetId
    FROM smstreets_news 
    WHERE tracker_flag = 1)
