select id, dsc, GeoAreaId
from GeoStreet s
where exists (select 1 from GeoStreetVtx v
where $Xmin < x and x < $Xmax and $Ymin < y and y<$Ymax
and s.id=v.GeoStreetId 
)
order by 1;
