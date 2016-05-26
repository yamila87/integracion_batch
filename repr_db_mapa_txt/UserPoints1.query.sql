select id,x,y,icon_id,Angle,Scale 
from UserPoints1 
where $Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax order by Id