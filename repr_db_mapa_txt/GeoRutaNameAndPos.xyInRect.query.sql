select s.Id,dsc,x,y 
from GeoStreet s, GeoStreetVtx v
where s.Id= v.GeoStreetId 
AND s.dsc like '%,RUTA%'
and $Xmin < x and x < $Xmax and $Ymin < y and y<$Ymax
order by 1


