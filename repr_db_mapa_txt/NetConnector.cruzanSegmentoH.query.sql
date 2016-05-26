SELECT 
v1.NetElementId, v1.Idx 
,v1.x,v1.y
,(v2.x-v1.x) dx,(v2.y-v1.y) dy
,v2.x,v2.y 
, v1.y + ((v2.y-v1.y)/(v2.x-v1.x)) * ($Xq - v1.x) cy
FROM NetConnectorVtx v1, NetConnectorVtx v2 
WHERE v1.NetElementId=v2.NetElementId and v1.Idx+1=v2.Idx 
AND (v1.x<$Xq)<>($Xq<v2.x) 
AND $Yqmin < cy AND cy < $Yqmax

