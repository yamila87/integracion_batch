CREATE TABLE CfgIconPart (IconId INTEGER, id INTEGER, idx INTEGER, type TEXT, Flags INTEGER, color INTEGER, lineType INTEGER, lineTypeInfo INTEGER, dbl1 REAL, dbl2 REAL, dbl3 REAL, dbl4 REAL, dbl5 REAL, dbl6 REAL);
CREATE UNIQUE INDEX ix_CfgIconPart_PK ON CfgIconPart (IconId, id, idx);
