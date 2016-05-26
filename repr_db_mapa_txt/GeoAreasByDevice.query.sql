select distinct 
	a.id geoAreaId,
	du.deviceId deviceId,
	du.wantsSync wantsSync
from
	GeoArea a,
	RelGroupArea ga,
	RelUserGroups ug,
	AuthDeviceUser du
where ga.GeoAreaId= a.id
	and ug.GroupId= ga.GroupId
	and du.UserId= ug.UserId
order by 1,2
