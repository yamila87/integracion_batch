SELECT * FROM RDAMAREATYPES at1 WHERE NOT EXISTS(SELECT 1 FROM RDAMAREATYPES at2 WHERE at1.SUPERAREATYPE=at2.AREATYPEID)