SELECT categoryId id, caption dsc, parentCategoryId parent
FROM sprSymbGsCat_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax