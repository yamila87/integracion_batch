SELECT o.SPRID,o.BLOCKID GeoBlockId
FROM SMBLOCKS o
WHERE 
o.LOGIDTO!=0 AND $logIdSyncMin < o.LOGIDTO AND o.LOGIDTO <= $logIdSyncMax
