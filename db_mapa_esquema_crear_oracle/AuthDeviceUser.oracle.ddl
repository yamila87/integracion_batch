CREATE TABLE AuthDeviceUser (
	deviceId varchar(100) not null, 
	userId integer not null,
	wantsSync integer,
	constraint AuthDeviceUser_PK primary key (deviceId,userId)
);
