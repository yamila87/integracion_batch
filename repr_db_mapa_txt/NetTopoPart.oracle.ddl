CREATE TABLE NetTopoPart (netElementIdFrom NUMBER(10), netElementIdTo NUMBER(10), NodeIdxFrom NUMBER(5), NodeIdxTo NUMBER(5));
CREATE UNIQUE INDEX ix_NetTopoPart_PK ON NetTopoPart (netElementIdFrom, NodeIdxFrom, netElementIdTo);
