Select GeoBlockId Id,Idx,X,Y
from GeoBlockVtx b 
where 
GeoBlockId in (select GeoBlockId from GeoBlockVtx
where $Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax) /* A: esta dentro del rect */
or (
	GeoBlockId in (select GeoBlockId from GeoBlockVtx 
	where  ($Xmin<x AND x<$Xmax) AND (y<$Ymin or y>$Ymax) ) /*A: tiene vtx con  x en el rect pero y no */
and 
	GeoBlockId in (select GeoBlockId from GeoBlockVtx
	where  ($Ymin<y AND y<$Ymax) AND (x<$Xmin or x>$Xmax)) /*A: tiene vtx con y en el rect pero x no */
and 
	GeoBlockId not in (select GeoBlockId from GeoBlockVtx /*A: no tiene vtx en el rect, asi no repite con el de arriba */
	where $Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax)
)
order by GeoBlockId, Idx

