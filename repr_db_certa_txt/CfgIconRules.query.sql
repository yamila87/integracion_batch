SELECT sprid, profileid,  scalerangeid, ruleid,  draworder Idx,  providername Func, chunkorder ParamIdx, s.stringchunk Param
FROM  SPRSYMBRULES r,SPRSTRINGCHUNKS s 
WHERE r.configstringid=s.stringid 
ORDER BY sprid, profileid,  scalerangeid, ruleid, draworder, providername, chunkorder


