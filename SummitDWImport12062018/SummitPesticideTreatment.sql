SELECT pt.[Asset ID] AS ItemID, pt.ActivityID, pt.GeometryID, pt.lObsTypeID, CAST(pt.[Activity Date] AS DATETIME2(7)) AS ActivityDate, pt.[User] ActivityUser, pt.[Related Item ID] AS RelatedItemID
,TRY_PARSE(pt.[Labor (in minutes)] AS INT) LaborInMinutes
,pt.[Product or mixture] Product, TRY_PARSE(pt.[Actual Amount] AS NUMERIC(8,5)) AS ActualAmount, pt.[Dispense Unit] DispenseUnit
,pt.[Preferred Dispense Unit] PreferedDispenseUnit
,TRY_PARSE(pt.[Treating Area] AS NUMERIC(8,5)) TreatmentArea, pt.[Treating Area Unit] TreatmentAreaUnit
,TRY_PARSE(pt.[Recommended Amount (Min)] AS NUMERIC(8,5))  RecommendMin, TRY_PARSE(pt.[Recommended Amount (Max)] AS NUMERIC(8,5)) RecommendMax
,TRY_CAST(pt.[Treatment Complete?] AS VARCHAR(3)) AS TreatmentComplete

FROM [21_VCD - Pesticide Treatment] pt