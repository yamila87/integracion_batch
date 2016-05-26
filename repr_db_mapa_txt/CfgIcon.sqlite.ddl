CREATE TABLE CfgIcon (id INTEGER, dsc INTEGER, IconCategoryId INTEGER, Scale REAL, type TEXT, imagepath INTEGER);
CREATE UNIQUE INDEX ix_CfgIcon_PK ON CfgIcon (id);
