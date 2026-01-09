/*
Executive KPI summary for hospital operations.
Provides high-level metrics for performance and cost analysis.
*/
WITH admission_stats AS (
    SELECT
        COUNT(*) AS total_admissions,
        ROUND(AVG(discharge_date - admission_date), 2) AS avg_length_of_stay
    FROM admissions
),
cost_stats AS (
    SELECT
        ROUND(AVG(admission_cost), 2) AS avg_cost_per_admission
    FROM (
        SELECT
            admission_id,
            SUM(treatment_cost) AS admission_cost
        FROM treatments
        GROUP BY admission_id
    ) s
)
SELECT
    total_admissions,
    avg_length_of_stay,
    avg_cost_per_admission
FROM admission_stats, cost_stats;
