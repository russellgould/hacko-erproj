CREATE TABLE incident (
  "Incident_ID" INTEGER NOT NULL,
  "ResponderUnit_ID" INTEGER,
  "RunNumber" VARCHAR(20),
  "AlarmLevel_ID" INTEGER,
  "MutualAid_ID" INTEGER,
  "FMARespComp" VARCHAR(3),
  "FireBlock" VARCHAR(6),
  "NeighborAssoc" VARCHAR(18),
  "CensusTract" VARCHAR(6),
  "Quad" VARCHAR(2),
  "StreetName" VARCHAR(30),
  "StreetType" VARCHAR(4),
  "Quad2" VARCHAR(2),
  "StreetName2" VARCHAR(30),
  "StreetType2" VARCHAR(4),
  "County" VARCHAR(30),
  "City" VARCHAR(30),
  "State" VARCHAR(2),
  "Zip" VARCHAR(9),
  "IncDate" DATE,
  "TypeNatureCode_ID" INTEGER,
  "IncSitFoundPrm_ID" INTEGER,

  PRIMARY KEY ("Incident_ID"),
  FOREIGN KEY ("AlarmLevel_ID")
    REFERENCES alarmlevel ("AlarmLevel_ID"),
  FOREIGN KEY ("MutualAid_ID")
    REFERENCES mutualaid ("MutualAid_ID"),
  FOREIGN KEY ("TypeNatureCode_ID")
    REFERENCES typenaturecode ("TypeNatureCode_ID"),
  FOREIGN KEY ("IncSitFoundPrm_ID")
    REFERENCES incsitfound ("IncSitFound_ID"),
);
