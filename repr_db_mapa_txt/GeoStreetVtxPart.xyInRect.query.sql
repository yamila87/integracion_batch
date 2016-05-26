SELECT REPLACE( s.dsc, ',' , '') || ', ' || a.dsc || ',' || 
(select ltrim(dsc, '0123456789/') from geoarea where id = a.parent) dsc,V.X, V.Y
FROM GeoStreet s, GeoStreetVtx v, geoarea a
WHERE s.Id in (select GEOSTREETID from GeoStreetVtx where  $Xmin < x and x < $Xmax and $Ymin < y and y<$Ymax)
and v.GeoStreetId= s.id
and s.dsc like ($calleNombrePrefijo || '%')
and s.GEOAREAID = a.id
ORDER BY dsc, V.X, V.Y
