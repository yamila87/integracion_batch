select * 
from(
	select categid id, categcaption name, nettypeid net_type_id, entitytype obj_type_id, logIdFrom, logIdTo, 
	to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS') fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' ) fec_inc_hasta,
	row_number() over (order by logIdFrom, categid)  rn
	from categories_h
)rn
WHERE rn BETWEEN $rownumMin AND $rownumMax