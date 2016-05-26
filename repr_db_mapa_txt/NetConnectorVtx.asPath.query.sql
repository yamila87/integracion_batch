select GeoBlockId, group_concat((x % 10000) || ',' || (y % 10000),',') 
from GeoBlockVtx 
group by GeoBlockId 
limit 10;
