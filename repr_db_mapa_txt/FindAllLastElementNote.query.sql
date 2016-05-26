SELECT
    elementid,
    description,
    creationdate,
    username
FROM
    (
        SELECT
            notes.elementid elementid,
            notes.description description,
            notes.creation_date creationdate,
            users.name username,
            MAX(creation_date) over(
                partition BY elementid
            ) max_creation_date
        FROM
            userNotes notes INNER JOIN users
                ON notes.USERID = users.ID INNER JOIN netelement ele
                ON notes.elementId = ele.netelementid
        WHERE
            ele.x > $Xmin
            AND ele.x < $Xmax
            AND ele.y > $Ymin
            AND ele.y < $Ymax
    )
WHERE
    creationdate = max_creation_date 
