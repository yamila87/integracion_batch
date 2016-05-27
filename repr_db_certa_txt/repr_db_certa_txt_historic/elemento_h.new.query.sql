select o2.objectnameid id_ele,o2.objectid id,o2.SPRID fk_clase,o2.objecttype id_tipo_obj,0 id_vista,
                     angle angulo,scale escala, SPRCOLOR color, o2.nextid id_sig,
                      v.x X, v.y Y,
                     logIdFrom id_inc_desde, logIdTo id_inc_hasta,
                      to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS')  fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' )  fec_inc_hasta
from(
            select id,row_number() over (order by id)  rn
            from(
                        SELECT distinct objectid id
                        FROM sprobjects
                    ) obj
        ) rn 
        left join sprobjects o2 on rn.id = o2.objectid
        left join sprobjectvertixs v on rn.id = v.objectid
where rn.rn BETWEEN $rownumMin AND $rownumMax