CREATE TABLE version_vtc(
  id                   INTEGER NOT NULL,
  id_version           INTEGER NOT NULL,
  orden                INTEGER NOT NULL,
  x                    INTEGER NOT NULL,
  y                    INTEGER NOT NULL 
);
CREATE UNIQUE INDEX version_vtc_pk ON version_vtc (id);
CREATE UNIQUE INDEX version_vtc_ind ON version_vtc (id_version,orden,x,y);
