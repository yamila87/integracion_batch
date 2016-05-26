select distinct REPLACE( s.dsc, ',' , '') || ', ' || a.dsc || ',' || 
(select ltrim(dsc, '0123456789/') from geoarea where id = a.parent) dsc
from GeoStreet s, GeoStreetVtx v, geoarea a
where s.Id= v.GeoStreetId 
and $Xmin < x and x < $Xmax and $Ymin < y and y<$Ymax
and s.GEOAREAID = a.id
order by 1;
