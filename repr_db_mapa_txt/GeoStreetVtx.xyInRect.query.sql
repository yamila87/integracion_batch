Select v.Id,v.Idx,v.X,v.Y,g.DSC,g.streettypeid
from GeoStreetVtx v
join GeoStreet g ON g.Id = v.GeoStreetId
where 
v.Id in (select id from GeoStreetVtx where x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax) 
order by g.streettypeid,g.DSC,v.Id,v.Idx
