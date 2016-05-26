insert into UserNotes (id, userId, elementId, description, image, CREATION_DATE, SYNC_TIME, NOTE_CATEGORY_ID, NOTE_CATEGORY_TYPE_ID,X,Y, logId)
values ($id, $userId, $elementId, $description, $fotoSrc:blob, TO_DATE($date, 'YYYY-MM-DD HH24:MI:SS'), SYSDATE, $noteCategoryId, $noteCategoryTypeId,$X,$Y, USER_NOTES_SEQ.nextval)
