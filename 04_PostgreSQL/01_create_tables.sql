DROP TABLE IF EXISTS fact_kpis;
DROP TABLE IF EXISTS fact_patient_biomarkers;
DROP TABLE IF EXISTS fact_clinical_outcomes;
DROP TABLE IF EXISTS dim_biomarkers;
DROP TABLE IF EXISTS dim_patients;

CREATE TABLE dim_patients (
    patient_id INT PRIMARY KEY,
    age NUMERIC,
    sex VARCHAR(10),
    cancer_type VARCHAR(50),
    risk_group VARCHAR(50)
);

CREATE TABLE fact_clinical_outcomes (
    outcome_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    survival_months NUMERIC,
    event INT,
    stage VARCHAR(50),
    ecog NUMERIC,
    FOREIGN KEY (patient_id) REFERENCES dim_patients(patient_id)
);

CREATE TABLE dim_biomarkers (
    biomarker_id INT PRIMARY KEY,
    gene_symbol VARCHAR(100),
    gene_id VARCHAR(100),
    official_name TEXT,
    description TEXT
);

CREATE TABLE fact_patient_biomarkers (
    id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    biomarker_id INT NOT NULL,
    association_source VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES dim_patients(patient_id),
    FOREIGN KEY (biomarker_id) REFERENCES dim_biomarkers(biomarker_id)
);

CREATE TABLE fact_kpis (
    kpi_id SERIAL PRIMARY KEY,
    cancer_type VARCHAR(50),
    total_patients INT,
    mean_age NUMERIC,
    death_rate NUMERIC,
    mean_survival NUMERIC,
    median_survival NUMERIC
);