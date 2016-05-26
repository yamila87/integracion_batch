CREATE TABLE CfgIconPart (IconId NUMBER, id NUMBER, idx NUMBER, type VARCHAR2(1000), Flags NUMBER, color NUMBER, linetype VARCHAR2(100), lineTypeInfo VARCHAR2(100), dbl1 REAL, dbl2 REAL, dbl3 REAL, dbl4 REAL, dbl5 REAL, dbl6 REAL);

CREATE UNIQUE INDEX ix_CfgIconPart_PK ON CfgIconPart
(IconId, id, idx);

ALTER TABLE CfgIconPart ADD (
  CONSTRAINT ix_CfgIconPart_PK  unique  (IconId, id, idx)
  );

