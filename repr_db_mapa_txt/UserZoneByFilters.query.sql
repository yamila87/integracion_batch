SELECT u.*
FROM Users u
INNER JOIN RelUserGroups ug ON u.id = ug.userid
INNER JOIN RelGroupArea ga ON ga.groupid = ug.groupid
INNER JOIN GeoArea a ON a.id = ga.geoareaid
WHERE upper(u.name) like upper($user:likeString)
AND upper(a.dsc) like upper($zone:likeString)
AND a.typeid = 29