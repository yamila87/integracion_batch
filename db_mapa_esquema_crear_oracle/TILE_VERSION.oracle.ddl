CREATE TABLE tile_version(
  id                   NUMBER(10) NOT NULL,
  id_version           NUMBER(10) NOT NULL,
  id_tile_def          NUMBER(10) NOT NULL,
  x                    FLOAT NOT NULL,
  y                    FLOAT NOT NULL 
);
CREATE UNIQUE INDEX tile_version_pk ON tile_version (id);
CREATE UNIQUE INDEX tile_version_ind ON tile_version (id_version,id_tile_def,x,y);
-- Creates PK Constraints
ALTER TABLE tile_version ADD CONSTRAINT tile_version_pk PRIMARY KEY (id) USING INDEX tile_version_pk;
-- Creates FK Constraints
ALTER TABLE tile_version ADD CONSTRAINT tile_version_id_tile_def FOREIGN KEY (id_tile_def) REFERENCES tile_def (ID);
-- Creates Views
-- Insert Data
-- Creates Sequences
CREATE SEQUENCE tile_version_seq START WITH 1 NOCACHE;