CREATE TABLE Users (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR (30), password VARCHAR (20), CONSTRAINT unique_name UNIQUE (name));
CREATE TABLE groups (id INTEGER PRIMARY KEY AUTOINCREMENT, description VARCHAR (30), CONSTRAINT unique_description UNIQUE (description));
CREATE TABLE RelGroupArea (groupId INTEGER REFERENCES groups (id), geoAreaId INTEGER REFERENCES GeoArea (Id), PRIMARY KEY (geoAreaId, groupId));
CREATE TABLE RelUserGroups (userId INTEGER REFERENCES Users (id), groupId INTEGER REFERENCES groups (id), PRIMARY KEY (userId, groupId));