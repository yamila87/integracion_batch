SELECT o.objectid NetElementId, o.SPRID, o.objecttype id_tipo_obj
,ROUND(o.x*10,0) X, ROUND(o.y*10,0) Y
,angle,scale, SPRCOLOR color
FROM sprobjects o
, sprlog lf
WHERE o.OBJECTTYPE=12
AND o.LOGIDTO=0 AND $logIdSyncMin < o.LOGIDFROM AND o.LOGIDFROM <= $logIdSyncMax
AND o.LOGIDFROM=lf.LOGID AND lf.EVENTSTATUS=0 
