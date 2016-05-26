SELECT NET.ENTITYTYPEID, CET.DSCL, COUNT(NET.ENTITYTYPEID) 
	FROM NETELEMENT NET 
	INNER JOIN CFGENTITYTYPE CET 
		ON NET.ENTITYTYPEID = CET.ID 
	GROUP BY ENTITYTYPEID ORDER BY 3 ASC