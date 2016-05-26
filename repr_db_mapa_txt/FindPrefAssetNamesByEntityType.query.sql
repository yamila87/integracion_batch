select distinct substr(val,1,$CfgActivoPrefijoLen) pfx
from allattr atr inner join netelement ele on atr.id = ele.netelementid
                    inner join CfgAttrBusqueda bus on ele.entitytypeid = bus.EntityTypeId
                    inner join cfgentitytype ent on ent.id = bus.entitytypeid
where  x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax
       and attrtypeid = $attrTypeId;
