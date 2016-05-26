SELECT s.streetId GeoStreetId
FROM smStreets_h s
WHERE s.logIdTo != 0
AND s.logIdTo > $logIdSyncMin
AND s.logIdTo <= $logIdSyncMax