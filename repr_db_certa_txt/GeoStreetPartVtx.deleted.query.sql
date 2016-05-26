SELECT streetid GeoStreetId,v.streetsectionid Id,streetgeoorder Idx
FROM SmStreetGeo v,SmStreetSection o,SPRLOG lf
WHERE v.StreetSectionId=o.StreetSectionId 
AND o.LOGIDTO!=0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
AND o.LOGIDTO=lf.LOGID AND lf.EVENTSTATUS=0 