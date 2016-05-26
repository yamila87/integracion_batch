SELECT o.OBJECTID ObjectId, o.LinkId AttrTypeId, o.SeqOrder Idx
FROM SPRLINKS o
WHERE 
o.LOGIDTO>0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
