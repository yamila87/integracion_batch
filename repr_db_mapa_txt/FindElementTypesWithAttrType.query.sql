select distinct bus.entitytypeid entitytypeid,ent.DscL description
from CfgAttrBusqueda bus inner join cfgentitytype ent on ent.id = bus.EntityTypeId
            inner join netelement ele on ele.entitytypeid = ent.id
            inner join  allattr  atr on  ELE.NETELEMENTID = atr.id
where attrtypeid = $attrTypeId
and  x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax;