SELECT gsId iconId, gsPartId id, item idx, type, flags, color, 
    lineType, lineTypeInfo, dbl1, dbl2, dbl3, dbl4, dbl5, dbl6
FROM sprSymbGsPart_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax