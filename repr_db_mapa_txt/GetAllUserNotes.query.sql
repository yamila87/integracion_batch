select id,userid,elementid,description,creation_date,x,y
from usernotes
where $Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax order by Id