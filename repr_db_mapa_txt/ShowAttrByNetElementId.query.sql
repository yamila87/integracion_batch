/*Busco elementos (muestro sus datos) por algún atributo (configurado). Sólo voy a realizar la búsqueda sobre elementos que estén entre los tipos configurados*/
SELECT ATR.*,NE.X,NE.Y
FROM NETELEMENT NE INNER JOIN ALLATTR ATR ON NE.NETELEMENTID = ATR.ID
WHERE NE.ENTITYTYPEID IN (203) AND ATR.ATTRTYPEID IN(113) AND ATR.VAL LIKE '%COMMSCOPE%'; 