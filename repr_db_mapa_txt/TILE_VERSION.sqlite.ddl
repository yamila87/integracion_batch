CREATE TABLE tile_version(
  id                   INTEGER NOT NULL,
  id_version           INTEGER NOT NULL,
  id_tile_def          INTEGER NOT NULL,
  x                    INTEGER NOT NULL,
  y                    INTEGER NOT NULL 
);
CREATE UNIQUE INDEX tile_version_pk ON tile_version (id);
CREATE UNIQUE INDEX tile_version_ind ON tile_version (id_version,id_tile_def,x,y);