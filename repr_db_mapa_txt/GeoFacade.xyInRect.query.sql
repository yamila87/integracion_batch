SELECT REPLACE( s.dsc, ',' , '') || ', ' || a.dsc || ',' || (select ltrim(dsc, '0123456789/') from geoarea where id = a.parent) dsc, f.GeoFacadeNumIni,f.GeoFacadeNumEnd,f.GeoFacadeNumDir,v1.x x1,v1.y y1,v2.x x2,v2.y y2,f.GeoBlockId,f.GeoBlockVtxIdxIni,f.GeoBlockVtxIdxEnd
FROM GeoStreet s, GeoFacade f, GeoBlockVtx v1, GeoBlockVtx v2, geoarea a
WHERE v1.GeoBlockId in (select GeoBlockId from GeoBlockVtx where	$Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax)
and f.GeoBlockId=v1.GeoBlockId and f.GeoBlockVtxIdxIni= v1.idx
and f.GeoBlockId=v2.GeoBlockId and f.GeoBlockVtxIdxEnd= v2.idx
and f.GeoStreetId= s.id
and s.GEOAREAID = a.id
and s.dsc like ($calleNombrePrefijo || '%')
ORDER BY 1,2
