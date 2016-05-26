select block.X, block.Y
from GeoBlockVtx block
where GeoBlockId = $BlockId
and block.Idx = (
select case when f1.GeoBlockVtxIdxIni = f2.GeoBlockVtxIdxEnd then f1.GeoBlockVtxIdxIni
when f2.GeoBlockVtxIdxIni = f1.GeoBlockVtxIdxEnd then f2.GeoBlockVtxIdxIni
end GeoBlockVtxIdx
from GeoFacade f1,
GeoFacade f2,
GeoStreet sDsc1,
GeoStreet sDsc2
where f1.GeoBlockId = $BlockId
and f2.GeoBlockId = f1.GeoBlockId
and f1.GeoStreetId = sDsc1.Id
and sDsc1.Dsc like ($StreetName1||'%')
and f2.GeoStreetId = sDsc2.Id
and sDsc2.Dsc like ($StreetName2||'%')
and (f1.GeoBlockVtxIdxIni = f2.GeoBlockVtxIdxEnd
or
f2.GeoBlockVtxIdxIni = f1.GeoBlockVtxIdxEnd
)
)
