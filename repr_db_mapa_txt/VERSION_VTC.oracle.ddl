CREATE TABLE version_vtc(
  id                   NUMBER(10) NOT NULL,
  id_version           NUMBER(10) NOT NULL,
  orden                NUMBER(6) NOT NULL,
  x                    FLOAT NOT NULL,
  y                    FLOAT NOT NULL 
);
CREATE UNIQUE INDEX version_vtc_pk ON version_vtc (id);
CREATE UNIQUE INDEX version_vtc_ind ON version_vtc (id_version,orden,x,y);
-- Creates PK Constraints
ALTER TABLE version_vtc ADD CONSTRAINT version_vtc_pk PRIMARY KEY (id) USING INDEX version_vtc_pk;
-- Creates FK Constraints
-- Creates Views
-- Insert Data
-- Creates Sequences
CREATE SEQUENCE version_vtc_seq START WITH 1 NOCACHE;