SELECT streetid GeoStreetId,v.streetsectionid Id,streetgeoorder Idx
, ROUND(v.x*10,0) X, ROUND(v.y*10,0) Y
FROM SmStreetGeo v,SmStreetSection o
WHERE v.StreetSectionId=o.StreetSectionId 

