-- Initial data structure exploration
SELECT COUNT(*) as total_records,
       COUNT(DISTINCT Gnrc_Name) as unique_generic_drugs,
       COUNT(DISTINCT Brnd_Name) as unique_brand_drugs,
       COUNT(DISTINCT Prscrbr_NPI) as unique_prescribers
FROM Medicare_PartD;

-- Data quality check
SELECT COUNT(*) as records_with_null_cost,
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Medicare_PartD) as null_percentage
FROM Medicare_PartD 
WHERE Tot_Drug_Cst IS NULL OR Tot_Drug_Cst = 0;

-- Provider type distribution
SELECT Prscrbr_Type, 
       COUNT(*) as prescriber_count,
       SUM(Tot_Drug_Cst) as total_spending
FROM Medicare_PartD
WHERE Tot_Drug_Cst IS NOT NULL AND Tot_Drug_Cst > 0
GROUP BY Prscrbr_Type
ORDER BY total_spending DESC;
