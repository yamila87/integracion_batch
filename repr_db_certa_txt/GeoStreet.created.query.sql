SELECT s.streetId GeoStreetId, s.streetName Dsc, s.streetTypeId streetTypeId, s.regionId geoAreaId
FROM smStreets_h s
WHERE s.logIdTo = 0
AND s.logIdFrom > $logIdSyncMin
AND s.logIdFrom <= $logIdSyncMax