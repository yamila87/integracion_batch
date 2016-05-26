Select GeoAreaId Id,Idx,X,Y
from GeoAreaVtx v 
where GeoAreaId in (select gv.GeoAreaId from GeoArea ga, GeoAreaVtx gv 
where ga.id = gv.geoareaid and ga.TypeId=1 and $Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax)
order by GeoAreaId, Idx

