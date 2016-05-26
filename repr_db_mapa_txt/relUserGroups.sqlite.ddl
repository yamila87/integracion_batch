CREATE TABLE RelUserGroups (
    userId  INTEGER REFERENCES Users (id),
    groupId INTEGER REFERENCES groups (id),
    PRIMARY KEY (
        userId,
        groupId
    )
);