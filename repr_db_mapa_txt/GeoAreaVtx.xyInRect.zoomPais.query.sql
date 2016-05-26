SELECT typeid, dsc, v.GeoAreaId, Id, Idx, X, Y
FROM GeoAreaVtx v,
(select distinct Id GeoAreaId, dsc, TypeId 
FROM GeoArea a
WHERE a.TypeId in ($areaTypes:SqlListaDeNumeros)
AND exists (SELECT *
  FROM GeoAreaVtx v2
  WHERE $Xmin<+v2.x and +v2.x<$Xmax and $Ymin<v2.y and v2.y<$Ymax
  and a.Id=v2.GeoAreaId
)) af /* A: primero filtro las areas que a) son del tipo que busco (pocas) y b) tienen un punto dentro del rectangulo */
WHERE v.GeoAreaId= af.GeoAreaId /* A: despues me traigo los puntos que estan incluidos (sino me haria filtrar tooods los puntos primero y tarda muchisimo, notar los signos "+" para que use el indice por x y  */
AND $Xmin<+v.x and +v.x<$Xmax and $Ymin<v.y and v.y<$Ymax
ORDER BY 1,2,3,4,5;

