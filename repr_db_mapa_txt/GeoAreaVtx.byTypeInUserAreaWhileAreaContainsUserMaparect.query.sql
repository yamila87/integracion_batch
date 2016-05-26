select ab.id, ga.dsc name, gavtx.idx, gavtx.x, gavtx.y, ga.typeId typeId 
from (select vtx.geoAreaId id, max(vtx.x) XMax, max(vtx.y) YMax, min(vtx.x) XMin, min(vtx.y) YMin 
      from geoareavtx vtx
      inner join geoarea a
      on a.id = vtx.geoareaid
      where a.typeId in (4) /* A: solo hubs */
      group by vtx.geoareaid ) ab
inner join geoarea ga on 
ab.id = ga.id
inner join geoareavtx gavtx
on gavtx.geoareaid = ab.id
where XMax >= $Xmax
  AND   YMax >= $Ymax
  AND   XMin <= $Xmin 
  AND   YMin <= $Ymin
order by ab.id, gavtx.idx
