# 🧬 OncoBio Decision Analytics  
**Projet Fil Rouge – Formation Data Analyst Simplon**

Analyse décisionnelle des biomarqueurs associés au cancer à partir de données cliniques et biologiques


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



