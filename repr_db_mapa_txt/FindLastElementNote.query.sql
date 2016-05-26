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
            MAX(creation_date) over(partition BY elementid) max_creation_date
        FROM userNotes notes inner join users on notes.USERID = users.ID
    )
WHERE
    creationdate = max_creation_date
    and elementId = $elementId