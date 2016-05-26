SELECT a.val,e.x,e.y,e.entitytypeid,e.netelementid
FROM allattr a
	inner join netelement e on a.id = e.netelementid
WHERE e.entitytypeid in (select entitytypeid
                                from CfgAttrBusqueda
                                where busquedaattrtypeid = $attrTypeId )
  AND attrtypeid = $attrTypeId
  AND x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax
	AND val like ($assetNamePfx ||'%')
order by val;
