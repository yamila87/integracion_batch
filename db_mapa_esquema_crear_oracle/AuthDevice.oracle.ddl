CREATE TABLE AuthDevice (
	deviceId varchar(100) not null, 
	token varchar(100), 
	constraint AuthDevice_PK primary key (deviceId)
);
