Select s.Id,v.Idx,v.X,v.Y
from GeoStreet s, GeoStreetVtx v
where s.Id= v.GeoStreetId 
AND s.dsc like '%,RUTA%'
AND x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax order by 1,2

