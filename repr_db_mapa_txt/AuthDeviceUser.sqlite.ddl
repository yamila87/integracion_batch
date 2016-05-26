CREATE TABLE AuthDeviceUser (
	deviceId not null, 
	userId not null,
	wantsSync
);

CREATE UNIQUE INDEX ix_AuthDeviceUser_PK on AuthDeviceUser (DeviceId,UserId);
