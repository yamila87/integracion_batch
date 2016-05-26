select id,attrtypeid,idx,val
from allattr
where id in (
Select n.NetElementId 
from NetElement n
    join CfgEntityType cfg on N.ENTITYTYPEID = CFG.ID
    and CFG.CATEGORYID in (20, 30, 31, 40, 41, 160, 161, 162, 163, 172, 182)
where 
    $Xmin<n.x AND n.x<$Xmax AND $Ymin<n.y AND n.y<$Ymax
)
order by 1,2,3
