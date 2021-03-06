SELECT *
FROM(
            SELECT objectidfrom ele_desde,objectidto ele_hasta,nodeindexfrom nodo_desde,nodeindexto nodo_hasta,
            logidfrom inc_id_desde,logidto inc_id_hasta,
            to_char(dateFrom,'YYYY-MM-DD HH24:MI:SS')fec_inc_desde, to_char(dateTo,'YYYY-MM-DD HH24:MI:SS' )fec_inc_hasta,
            row_number() over (order by objectidfrom , objectidto, nodeindexfrom, nodeindexto)  rn
            FROM sprtopology
            ) rn
WHERE rn BETWEEN $rownumMin AND $rownumMax