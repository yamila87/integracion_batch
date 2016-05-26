select f1.GeoBlockId
from GeoFacade f1, GeoFacade f2, GeoStreet s1, GeoStreet s2 
where f1.GeoStreetId<>f2.GeoStreetId 
and s1.Dsc like ($StreetName1||'%') and s2.Dsc like ($StreetName2||'%') 
and f1.GeoBlockId=f2.GeoBlockId and s1.Id=f1.GeoStreetId and s2.Id=f2.GeoStreetId 
and rownum <= 20