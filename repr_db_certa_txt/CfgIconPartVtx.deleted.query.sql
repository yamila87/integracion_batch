SELECT vtx.gsPartId iconPartId, vtx.item idx, vtx.gsPartVertexId id, vtx.x, vtx.y, vtx.bulge, 
  vtx.startWidth, vtx.endWidth
FROM sprSymbGsPartVertex_h vtx
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax