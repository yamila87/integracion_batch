select a.areaId Id, a.areaTypeId TypeId, a.areaName Dsc, a.areaShortName Code, a.superArea Parent
from amareas_h a
WHERE a.logIdTo = 0 
AND a.logIdFrom > $logIdSyncMin
AND a.logIdFrom <= $logIdSyncMax
