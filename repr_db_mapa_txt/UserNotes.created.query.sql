SELECT un.userId, un.description descripcion, TO_CHAR(un.Creation_Date, 'YYYY-MM-DD HH24:MI:SS') fecha_creacion, 
    NVL(un.x/10,0) x, NVL(un.y/10,0) y, un.Sync_Time, un.note_category_id category_id, un.note_category_type_id category_type_id, 
    u.fullname usuario 
FROM UserNotes un
INNER JOIN users u
on un.userId = u.id
WHERE un.logId > $logIdSyncMin