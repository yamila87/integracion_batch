CREATE TABLE CfgIconRules (EntityTypeId NUMBER, ProfileId NUMBER, ScaleRangeId REAL, RuleId NUMBER, Idx NUMBER, Func VARCHAR2(100), ParamIdx NUMBER, ParamVal VARCHAR2(1000));
CREATE UNIQUE INDEX ix_CfgIconRules_PK ON CfgIconRules (EntityTypeId, ProfileId, ScaleRangeId, RuleId, Idx, ParamIdx);
