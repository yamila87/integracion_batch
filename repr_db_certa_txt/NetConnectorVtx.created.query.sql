SELECT v.objectid NetElementId, v.vertixorder Idx
, ROUND(v.x*10,0) X, ROUND(v.y*10,0) Y
FROM SPROBJECTVERTIXS v,sprobjects o
,SPRLOG lf
WHERE v.OBJECTID=o.OBJECTID AND o.OBJECTTYPE=11
AND o.LOGIDTO=0 AND $logIdSyncMin < o.LOGIDFROM AND o.LOGIDFROM <= $logIdSyncMax
AND o.LOGIDFROM=lf.LOGID AND lf.EVENTSTATUS=0 