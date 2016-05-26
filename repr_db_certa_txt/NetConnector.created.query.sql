SELECT o.objectid NetElementId, o.SPRID
,SPRCOLOR color
FROM sprobjects o
, sprlog lf
WHERE o.OBJECTTYPE=11
AND o.LOGIDTO=0 AND $logIdSyncMin < o.LOGIDFROM AND o.LOGIDFROM <= $logIdSyncMax
AND o.LOGIDFROM=lf.LOGID AND lf.EVENTSTATUS=0 
