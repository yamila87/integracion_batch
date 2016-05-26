Select v.NetElementId Id,Idx,X,Y, nc.EntityTypeId entitytypeid
from NetConnectorVtx v, 
		 (Select * from NetConnector c join CfgEntityType cfg on (C.ENTITYTYPEID = CFG.ID
     and CFG.CATEGORYID in (20, 30, 31, 40, 41, 160, 161, 162, 163, 182))) nc
where v.NetElementId in (select NetElementId from NetConnectorVtx
  where	$Xmin<x AND x<$Xmax AND $Ymin<y AND y<$Ymax)
	and v.NetElementId= nc.NetElementId
order by Id, Idx
