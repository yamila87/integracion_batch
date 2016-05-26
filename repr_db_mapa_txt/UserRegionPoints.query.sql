SELECT x, y
FROM GeoAreaVtx gavtx
INNER JOIN RelGroupArea ga ON ga.geoAreaId = gavtx.GeoAreaId
INNER JOIN RelUserGroups ug ON ug.groupId = ga.groupId
WHERE ug.userId = $userId
ORDER BY gavtx.idx

