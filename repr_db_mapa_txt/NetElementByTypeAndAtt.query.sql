select NetElementId, X,Y
 from NetElement E , CfgEntityType T
 where  E.EntityTypeId = T.id
 and upper(T.dscl) like upper($Tipo) ||'%'
 and E.NetElementId like upper($Nombre) ||'%'
 and T.CATEGORYID in (20, 30, 31, 40, 41, 160, 161, 162, 163, 172, 182)
