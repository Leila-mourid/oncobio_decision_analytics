COPY dim_patients(patient_id, age, sex, cancer_type, risk_group)
FROM 'C:\Projet_filrouge\oncobio_decision_analytics\01_Data\Processed\patients_master.csv'
DELIMITER ','
CSV HEADER;

COPY fact_clinical_outcomes(patient_id, survival_months, event, stage, ecog)
FROM 'C:\Projet_filrouge\oncobio_decision_analytics\01_Data\Processed\patients_master.csv'
DELIMITER ','
CSV HEADER;

COPY dim_biomarkers(biomarker_id, gene_symbol, gene_id, official_name, description)
FROM 'C:\Projet_filrouge\oncobio_decision_analytics\01_Data\Processed\biomarker_reference_clean.csv'
DELIMITER ','
CSV HEADER;

COPY fact_patient_biomarkers(patient_id, biomarker_id, association_source)
FROM 'C:\Projet_filrouge\oncobio_decision_analytics\01_Data\Processed\patient_biomarker_bridge.csv'
DELIMITER ','
CSV HEADER;

COPY fact_kpis(cancer_type, total_patients, mean_age, death_rate, mean_survival, median_survival)
FROM 'C:\Projet_filrouge\oncobio_decision_analytics\01_Data\Processed\kpi_summary.csv'
DELIMITER ','
CSV HEADER;