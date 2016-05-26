CREATE TABLE AllAttr (id INTEGER, AttrTypeId INTEGER, Idx INTEGER, Val TEXT);
CREATE UNIQUE INDEX ix_AllAttr_PK ON AllAttr (id, AttrTypeId, Idx);
create index ix_AllAttr_prefijo on AllAttr (val);

