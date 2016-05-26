SELECT p.gsId iconId, vtx.gsPartId iconPartId, vtx.item idx, vtx.gsPartVertexId id, vtx.x, vtx.y, vtx.bulge, 
  vtx.startWidth, vtx.endWidth
FROM sprSymbGsPartVertex_h vtx
INNER JOIN sprSymbGsPart p
ON vtx.gsPartId = p.gsPartId
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax