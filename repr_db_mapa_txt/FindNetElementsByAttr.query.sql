select atr.val,atr.id,ele.x,ele.y,ele.entitytypeid,atr.attrtypeid
from allattr atr inner join netelement ele on atr.id = ele.netelementid
where atr.attrtypeid = $AttrTypeId 
        and ele.entitytypeid = $EntityTypeId
        and atr.val like ($Valor ||'%')
		and rownum <=100
order by atr.val;
