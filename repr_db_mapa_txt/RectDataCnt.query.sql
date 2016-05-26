select s1.Dsc, s2.Dsc, bxy.x, bxy.y, count(cx.x) 
 from NetConnectorVtx cx, 
	  GeoBlockVtx bxy, 
	  GeoFacade f1, 
	  GeoFacade f2, 
	  GeoStreet s1, 
	  GeoStreet s2 
 where bxy.x-1000 < cx.x 
   and cx.x< bxy.x+1000 
   and bxy.y-1000< cx.y 
   and cx.y < bxy.y+1000 
   and bxy.GeoBlockId= f1.GeoBlockId 
   and bxy.Idx= 0 
   AND f1.GeoStreetId<>f2.GeoStreetId 
   and f1.GeoBlockId=f2.GeoBlockId 
   and s1.GeoStreetId= f1.GeoStreetId 
   and s2.GeoStreetId= f2.GeoStreetId
   and rownum <= 20
 group by 1,2,3,4 ;

