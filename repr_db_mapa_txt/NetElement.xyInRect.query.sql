Select n.NetElementId Id,n.X x,n.Y y,n.EntityTypeId EntityTypeId,n.Angle angle,n.Scale scale
from NetElement n
    join CfgEntityType cfg on N.ENTITYTYPEID = CFG.ID
    and CFG.CATEGORYID in (20, 30, 31, 40, 41, 160, 161, 162, 163, 182)
where
	$Xmin<n.x AND n.x<$Xmax AND $Ymin<n.y AND n.y<$Ymax
order by Id
