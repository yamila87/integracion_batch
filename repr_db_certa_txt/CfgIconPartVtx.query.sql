SELECT p.gsId IconId, v.gsPartId IconPartId, v.item Idx, gsPartVertexId IconVtxId,  
	v.x, v.y, v.bulge, v.startWidth, v.endWidth
FROM sprSymbGsPartVertex v, sprSymbGsPart p
WHERE v.gsPartId = p.gsPartId
ORDER BY 1,2,3

