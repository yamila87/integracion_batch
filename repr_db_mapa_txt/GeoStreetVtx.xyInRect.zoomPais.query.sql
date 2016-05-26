Select g.streettypeid,g.DSC,v.GeoStreetId,v.Id,v.Idx,v.X,v.Y
FROM GeoStreetVtx v
	JOIN GeoStreet g ON g.Id = v.GeoStreetId
WHERE g.StreetTypeId in ($streetTypes:SqlListaDeNumeros)
	AND exists (select 1 from GeoStreetVtx q where v.GeoStreetId=q.GeoStreetId and v.id=q.id 
		and x>$Xmin AND x<$Xmax AND y>$Ymin AND y<$Ymax) 
ORDER by 1,2,3,4,5
