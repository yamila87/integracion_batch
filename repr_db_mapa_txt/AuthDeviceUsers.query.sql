SELECT 
	du.userid userId,
	name userNic,
	password,
	fullname dsc,
	isadmin
FROM AuthDeviceUser du, Users u
WHERE deviceid=$deviceId /* ej. 'EMU_DEVICE_1' */
	AND du.userId= u.id 
ORDER BY dsc;
