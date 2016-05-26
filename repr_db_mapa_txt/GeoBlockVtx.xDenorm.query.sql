SELECT b0.geoblockid
,b0.x x0, b0.y y0
,b1.x x1, b1.y y1
,b2.x x2,b2.y y2 
,b3.x x3,b3.y y3 
,b4.x x4,b4.y y4 
,b5.x x5,b5.y y5 
FROM GeoBlockVtx b0, GeoBlockVtx b1, GeoBlockVtx b2, GeoBlockVtx b3, GeoBlockVtx b4, GeoBlockVtx b5
WHERE b0.idx=0 
AND b0.geoblockid=b1.geoblockid and b1.idx=1 
AND b0.geoblockid=b2.geoblockid and b2.idx=2 
AND b0.geoblockid=b3.geoblockid and b3.idx=3 
AND b0.geoblockid=b4.geoblockid and b4.idx=4 
AND b0.geoblockid=b5.geoblockid and b5.idx=5 
and rownum <= 2;

