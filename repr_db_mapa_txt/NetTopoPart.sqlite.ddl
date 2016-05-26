CREATE TABLE NetTopoPart (netElementIdFrom INTEGER, netElementIdTo INTEGER, NodeIdxFrom INTEGER, NodeIdxTo INTEGER);
CREATE UNIQUE INDEX ix_NetTopoPart_PK ON NetTopoPart (netElementIdFrom, NodeIdxFrom, netElementIdTo);
