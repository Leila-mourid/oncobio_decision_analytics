# 🧬 OncoBio Decision Analytics  
**Projet Fil Rouge – Formation Data Analyst Simplon**

Analyse décisionnelle des biomarqueurs associés au cancer à partir de données cliniques et biologiques

![Python](https://img.shields.io/badge/Python-Data-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![API](https://img.shields.io/badge/API-NCBI-green)
![Status](https://img.shields.io/badge/Project-In%20Progress-orange)

## Réalisé par
Leila Mourid  

## Encadrant
Yassine Ammami  

---

## Objectif du projet

Ce projet vise à concevoir une chaîne de traitement de données complète permettant d’analyser des données cliniques et biologiques liées au cancer afin de produire des indicateurs décisionnels utiles aux professionnels de santé et aux équipes de recherche.

L’objectif est de transformer des données hétérogènes (patients, biomarqueurs, survie) en informations exploitables via des analyses statistiques, une structuration relationnelle et un tableau de bord interactif.

Le projet couvre l’ensemble du cycle de vie de la donnée :

- Extraction multi-sources  
- Nettoyage et préparation  
- Modélisation en base de données  
- Analyse statistique  
- Visualisation décisionnelle  

---

## Problématique

Comment exploiter efficacement des données cliniques et biologiques afin d’identifier les biomarqueurs associés au pronostic des patients et d’aider à la prise de décision médicale ?

---

## Architecture du projet

Le repository suit une organisation inspirée des bonnes pratiques Data Engineering afin d’assurer :

- reproductibilité  
- traçabilité  
- industrialisation du pipeline 
```
src/                → scripts Python du pipeline
Data/
   Raw_data/        → données sources initiales
   Interim/         → données extraites en attente de nettoyage
   External_api/    → données enrichies via API
   Processed/       → données prêtes pour l’analyse et SQL
Notebooks/          → exploration et EDA
PostgreSQL/         → scripts de création BD
Dashboard_bi/       → fichiers de visualisation
Docs/               → supports et documentation
```
```
├── oncobio_decision_analytics/
├── Data/
|   ├── External_api
|       ├── biomarker_reference.csv
|   ├── Interim
|       ├── SEER Breast Cancer Dataset.csv
|   ├── Processed
|   ├── Raw_data
|       ├── biomarkers_data.csv
|       ├── patients_clinical_data.csv
|       ├── treatment_outcomes.csv
├── scr/
│   ├── Ingestion
|       ├── Script_d'extraction.ipynb
│   ├── Kpi
|   ├── Preprocessing
├── Docs/
│   ├── SEER Breast Cancer Dataset.docs
│   ├── cahier_charges_filrouge.docs
|── Notebooks/
│   ├── 
│   ├──
|── PostgreSQL/
|── Dashboard_bi/
|── Final_ppt/
|── .gitignore
|── requirements.txt
└── README.md
```

---

##  Sources de données utilisées 

### 1. Données cliniques (CSV)
Les premières analyses reposent sur un dataset public de cancer du sein contenant des informations démographiques, tumorales et de survie.

Source : dépôt public Zenodo.

Ces données constituent la base patient du projet.

---

### 2. Enrichissement biomarqueurs (API NCBI)

Afin d’ajouter une dimension biologique au projet, une extraction automatique est réalisée via l’API publique **NCBI Entrez**.

Pour chaque biomarqueur (ex : TP53, BRCA1, EGFR…), le pipeline récupère :

- l’identifiant du gène  
- le nom officiel  
- une description biologique  

Les résultats sont stockés dans :  Data/External_api/biomarker_reference.csv
---

##  Pipeline Data
Sources → Ingestion → Cleaning → Processed → PostgreSQL → KPI → Dashboard

---

##  Modélisation des données

Le modèle suit un schéma en étoile permettant une analyse optimisée.

### Dimensions
- dim_patients  
- dim_biomarkers  

### Tables de faits
- fact_clinical_outcomes  
- fact_patient_biomarkers  

---

##  KPI analysés

### 🔹 KPI cliniques
- nombre total de patients  
- âge moyen  
- répartition par sexe  
- répartition par type de cancer  
- distribution des groupes de risque  

### 🔹 KPI pronostiques
- taux de mortalité  
- survie moyenne  
- survie médiane  
- survie par stade  
- survie par ECOG  

### 🔹 KPI décisionnels
- répartition des groupes à risque  
- biomarqueurs les plus étudiés  
- profils à haut risque  

---

##  Dashboard Power BI

Le dashboard est structuré en 3 pages :

###  Overview
- KPI globaux  
- distribution des patients  
- indicateurs de survie  

###  Clinical Analysis
- impact du stade  
- impact ECOG  
- analyse âge / survie  

###  Decision Support
- biomarqueurs  
- profils à risque  
- analyse décisionnelle  

---

##  Valeur métier

Ce projet permet :

-  d’identifier les patients à haut risque  
-  d’analyser les facteurs influençant la survie  
-  d’intégrer les biomarqueurs dans l’analyse  
-  d’aider à la prise de décision médicale  

---

*Projet réalisé dans le cadre de la formation Data Analyst — Mars 2025*

