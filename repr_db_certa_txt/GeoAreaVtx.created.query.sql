SELECT ap.areaId Id, apg.polygonId PartId, apg.polygonVerOrder Idx, ROUND(apg.x*10,0) X, ROUND(apg.y*10,0) Y
FROM ampolygonGeo apg
INNER JOIN ampolygons_h ap
ON ap.polygonId = apg.polygonId
WHERE ap.logIdTo = 0 
AND ap.logIdFrom > $logIdSyncMin
AND ap.logIdFrom <= $logIdSyncMax

