CREATE TABLE tile_def(
  id                   NUMBER(10) NOT NULL,       
  nombre               VARCHAR2(50) NOT NULL,     
  ancho                FLOAT NOT NULL,            
  largo                FLOAT NOT NULL     
);
CREATE UNIQUE INDEX tile_def_pk ON tile_def (id);
ALTER TABLE tile_def ADD CONSTRAINT tile_def_pk PRIMARY KEY (id) USING INDEX tile_def_pk;
INSERT INTO tile_def (id,nombre,ancho,largo) VALUES (1,'Navegador',5000,5000);
CREATE SEQUENCE tile_def_seq START WITH 1 NOCACHE;