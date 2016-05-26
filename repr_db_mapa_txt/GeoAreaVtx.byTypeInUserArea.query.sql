select a.id, a.dsc name, vtx.idx, vtx.x, vtx.y, t.Id typeId 
from GeoAreaVtx vtx
  inner join GeoArea a
  on a.id = vtx.geoAreaId
  inner join cfgareatype t
  on t.id = a.typeId
  where vtx.GeoAreaId in (select geoAreaId 
                            from GeoAreaVtx 
                            where x >= $Xmin
                              and x <= $Xmax 
                              and y >= $Ymin 
                              and y <= $Ymax)
  and t.id in ( $areaTypes:SqlListaDeNumeros )
order by t.id, a.id, vtx.idx
