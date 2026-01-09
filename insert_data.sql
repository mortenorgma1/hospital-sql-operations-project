INSERT INTO
	DEPARTMENTS (
        DEPARTMENT_NAME)
VALUES
	('Emergency'),
	('Cardiology'),
	('Neurology'),
	('Orthopedics'),
	('Oncology'),
	('Pediatrics'),
	('Psychiatry'),
	('General Medicine');


INSERT INTO 
    doctors (
        first_name, last_name, department_id)
SELECT
    'Doctor_' || gs,
    'Lastname_' || gs,
    (random() * 7 + 1)::int
FROM generate_series(1, 120) gs;


INSERT INTO 
    patients (
        first_name, last_name, birth_date, gender)
SELECT
    'Patient_' || gs,
    'Lastname_' || gs,
    DATE '1945-01-01' + (random() * 28000)::int,
    CASE WHEN random() < 0.5 THEN 'M' ELSE 'F' END
FROM generate_series(1, 6000) gs;


INSERT INTO 
    admissions (
        patient_id,
        doctor_id,
        admission_date,
        discharge_date
)
SELECT
    (random() * 5999 + 1)::int,
    (random() * 119 + 1)::int,
    DATE '2021-01-01' + (random() * 1200)::int,
    DATE '2021-01-01' + (random() * 1200 + 1)::int
FROM generate_series(1, 18000);


INSERT INTO treatments (
    admission_id,
    treatment_name,
    treatment_cost
)
SELECT
    a.admission_id,
    (ARRAY[
        'X-Ray',
        'MRI',
        'CT Scan',
        'Blood Test',
        'Surgery',
        'Physical Therapy',
        'Medication'
    ])[1 + (random() * 6)::int],
    ROUND((50 + random() * 950)::numeric, 2)
FROM admissions a
JOIN generate_series(1, 3) gs
    ON random() < 0.7;
