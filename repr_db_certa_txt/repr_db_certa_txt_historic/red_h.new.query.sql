SELECT *
FROM(
            select netTypeId id_red, netTypeCaption nombre, nettypePrefix alias, nettypeparent fk_padre, logIdFrom id_inc_desde, logIdTo id_inc_hasta, 
            to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS')fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' )fec_inc_hasta,
            row_number() over (order by logIdFrom, netTypeId)  rn
            from netTypes_h
            ) rn
WHERE rn BETWEEN $rownumMin AND $rownumMax