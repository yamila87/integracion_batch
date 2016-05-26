select distinct ele.entitytypeid,atr.attrtypeid,substr(atr.val,0,3) val
from allattr atr inner join netelement ele on atr.id = ele.netelementid
where atr.attrtypeid = $AttrTypeId
  and ele.entitytypeid = $EntityTypeId
order by val;