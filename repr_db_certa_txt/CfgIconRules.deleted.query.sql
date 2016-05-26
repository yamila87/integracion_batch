SELECT r.sprId entityTypeId, r.profileId, r.scaleRangeId, r.drawOrder idx, r.providerName func
FROM sprSymbRules_h r
WHERE logIdTo != 0
AND logIdTo > $logIdSyncMin AND logIdTo <= $logIdSyncMax