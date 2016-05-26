CREATE TABLE NetLink (netElementIdFrom INTEGER, netElementIdTo INTEGER, NodeIdxFrom INTEGER, NodeIdxTo INTEGER);
CREATE UNIQUE INDEX ix_NetLink_PK ON NetLink (netElementIdFrom, NodeIdxFrom, netElementIdTo);
