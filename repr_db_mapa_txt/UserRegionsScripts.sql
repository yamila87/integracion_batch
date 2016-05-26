//SCRIPTS necesarios para el feature de mostrar sólo la region del usuario

insert into Users (name, password, id) values ("testParqueChas", 123456, 3);

insert into groups (id, description) values (1, "testRegiones");

insert into RelGroupArea (geoAreaId, groupId) values (120064, 1)  // AGREGO PARQUE CHAS

insert into RelUserGroups (userId, groupId) values (3, 1); 


insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	1	,	56386948	,	61726003	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	2	,	56390659	,	61721098	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	3	,	56393992	,	61719630	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	4	,	56398813	,	61718063	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	5	,	56398938	,	61718542	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	6	,	56400724	,	61720168	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	7	,	56402605	,	61721882	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	8	,	56403655	,	61722828	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	9	,	56400914	,	61729211	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	10	,	56400364	,	61729944	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	11	,	56399300	,	61731400	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	12	,	56396152	,	61732311	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	13	,	56395954	,	61732182	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	14	,	56393359	,	61718542	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	15	,	56390351	,	61720168	,"PARQUE CHAS" ,0,0.0, 1.1, 0);
insert into UserPoints1 (id, X, Y, DESCRIPTION, icon_id, Angle, Scale, Color) values (	16	,	56388628	,	61721882	,"PARQUE CHAS" ,0,0.0, 1.1, 0);

insert into Users (name, password, id) values ("testVillaOrtuzar", 123456, 4);

insert into groups (id, description) values (2, "testRegiones2");

insert into RelGroupArea (geoAreaId, groupId) values (136, 2)  // AGREGO VILLA ORTUZAR

insert into RelUserGroups (userId, groupId) values (4, 2);  // RELACION USUARIO TESTVILLAORTUZAR CON GROUPO TESTREGIONES2


