SELECT streetid GeoStreetId,v.streetsectionid Id,streetgeoorder Idx
, ROUND(v.x*10,0) X, ROUND(v.y*10,0) Y
FROM SmStreetGeo v,SmStreetSection o
,SPRLOG lf
WHERE v.StreetSectionId=o.StreetSectionId 
AND o.LOGIDTO=0 AND $logIdSyncMin < o.LOGIDFROM AND o.LOGIDFROM <= $logIdSyncMax
AND o.LOGIDFROM=lf.LOGID AND lf.EVENTSTATUS=0 

