SELECT f.blockFacadeId GeoFacadeId
FROM smBlockFacades f
INNER JOIN smBlocks b
ON b.blockId = f.blockId
WHERE b.logIdTo != 0
AND b.logIdTo > $logIdSyncMin
AND b.logIdTo <= $logIdSyncMax