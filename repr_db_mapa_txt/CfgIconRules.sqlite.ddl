CREATE TABLE CfgIconRules (EntityTypeId INTEGER, ProfileId INTEGER, ScaleRangeId REAL, RuleId INTEGER, Idx INTEGER, Func INTEGER, ParamIdx INTEGER, ParamVal TEXT);
CREATE UNIQUE INDEX ix_CfgIconRules_PK ON CfgIconRules (EntityTypeId, ProfileId, ScaleRangeId, RuleId, Idx, ParamIdx);
