CREATE TABLE NOTE_CATEGORY_TYPE (
	ID NUMBER(10), 
	DESCRIPTION VARCHAR2(150), 
	NOTE_CATEGORY_ID NUMBER(10)
);

CREATE UNIQUE INDEX ix_NOTE_CATEGORY_TYPE_ID_PK ON NOTE_CATEGORY_TYPE (ID);

ALTER TABLE NOTE_CATEGORY_TYPE ADD (
  CONSTRAINT ix_NOTE_CATEGORY_TYPE_ID_PK  PRIMARY KEY  (ID)
  );

ALTER TABLE NOTE_CATEGORY_TYPE ADD (
  CONSTRAINT noteCategoryId_Notecategory_FK 
  FOREIGN KEY (NOTE_CATEGORY_ID) REFERENCES NOTE_CATEGORY (ID)
  );
