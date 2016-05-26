CREATE TABLE tile_def(
  id                   INTEGER NOT NULL,       
  nombre               TEXT NOT NULL,     
  ancho                INTEGER NOT NULL,            
  largo                INTEGER NOT NULL     
);


CREATE UNIQUE INDEX tile_def_pk ON tile_def (id);
INSERT INTO tile_def (id,nombre,ancho,largo) VALUES (1,'Navegador',5000,5000);