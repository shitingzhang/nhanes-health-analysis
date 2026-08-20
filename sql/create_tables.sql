-- NHANES Clean Table Structure
-- Generated from Python data pipeline (notebooks 01-02)

CREATE TABLE IF NOT EXISTS nhanes_clean (
    SEQN REAL,
    RIDAGEYR REAL,
    RIAGENDR REAL,
    BMXBMI REAL,
    PAD680 REAL,
    PAQ605 REAL,
    PFQ061D REAL,
    sitting_hours REAL,
    functional_limitation INTEGER,
    vigorous_activity INTEGER
);