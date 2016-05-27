SELECT *
FROM(
            select o.objectnameid id_ele,l.OBJECTID id_extra,LINKID fk_atr,SEQORDER orden,LINKVALUE valor,l.LOGIDFROM id_inc_desde,l.LOGIDTO id_inc_hasta,
            to_char(l.dateFrom,'YYYY-MM-DD HH24:MI:SS')fec_inc_desde, to_char(l.dateTo,'YYYY-MM-DD HH24:MI:SS' )fec_inc_hasta,
            row_number() over (order by o.objectnameid , o.objectid)  rn
            from sprlinks l,sprobjects o
            where o.objectid = l.objectid
            ) rn
WHERE rn BETWEEN $rownumMin AND $rownumMax