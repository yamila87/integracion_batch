SELECT r.sprId entityTypeId, r.profileId, r.scaleRangeId, r.ruleId, r.drawOrder idx, r.providerName func, s.chunkOrder paramIdx, 
        REPLACE( REPLACE( REPLACE(s.stringChunk, CHR(10), ' '), CHR(13), ' '), CHR(09), ' ') paramVal FROM sprSymbRules_h r
INNER JOIN sprStringChunks s
ON r.configStringId = s.stringId
WHERE logIdTo = 0
AND logIdFrom > $logIdSyncMin AND logIdFrom <= $logIdSyncMax