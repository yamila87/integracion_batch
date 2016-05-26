SELECT linkId id, linkCaption dsc
FROM links_h
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax
