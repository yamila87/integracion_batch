CREATE TABLE RelGroupArea (
    geoAreaId INTEGER REFERENCES GeoArea (Id),
    groupId   INTEGER REFERENCES groups (id),
    PRIMARY KEY (
        geoAreaId,
        groupId
    )
);