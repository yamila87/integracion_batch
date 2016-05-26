SELECT f.blockFacadeId GeoFacadeId, f.streetId GeoStreetId, f.blockId GeoBlockId, f.blockVerIni GeoBlockVtxIni,
f.blockVerEnd GeoBlockVtxEnd, f.blockFacadeNumIni GeoFacadeNumIni, f.blockFacadeNumEnd GeoFacadeNumEnd,
f.blockInvertNum GeoFacadeNumDir 
FROM smBlockFacades f
INNER JOIN smBlocks b
ON f.blockId = b.blockId
WHERE b.logIdTo = 0
AND b.logIdFrom > $logIdSyncMin
AND b.logIdFrom <= $logIdSyncMax 