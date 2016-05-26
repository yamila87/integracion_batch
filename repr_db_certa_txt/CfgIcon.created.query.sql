SELECT gsId id, caption dsc, categoryId iconCategoryId, scale, type, imagePath
FROM sprSymbGs_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax