SELECT * FROM RDLINKS l WHERE NOT EXISTS (SELECT 1 FROM RDCONNECTORS c WHERE l.OBJECTID=c.OBJECTID)