SELECT x,y from GeoAreaVtx  where geoAreaId=(
SELECT parent
FROM GeoArea gavtx
INNER JOIN RelGroupArea ga ON ga.geoAreaId = gavtx.id
INNER JOIN RelUserGroups ug ON ug.groupId = ga.groupId
WHERE ug.userId = $userId)
