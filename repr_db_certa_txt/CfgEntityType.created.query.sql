SELECT sprid id, alias dsc, caption dscl, netTypeId, entityType class, flags, categId categoryId, propertyId, layer
FROM sprEntities_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax