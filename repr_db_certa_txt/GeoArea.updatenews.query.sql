update amareas_news 
set tracker_flag = 0 
where areaId 
in (select areaId 
    from amareas_news 
    where tracker_flag = 1)
