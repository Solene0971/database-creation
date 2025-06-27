# Projet SAÉ S104 – Création BD

Ce projet a été réalisé dans le cadre de la SAÉ S104 du BUT Informatique (IUT Villetaneuse Université Sorbonne Paris Nord). 

Ce projet avait pour but de concevoir une base de données relationnelle permettant d’analyser la fréquence des catastrophes climatiques dans différents pays. L’objectif était aussi de comparer l’approche manuelle (script SQL) avec l’utilisation d’un Atelier de Génie Logiciel (AGL), en l’occurrence pgModeler, pour la modélisation des tables.


## Livrables

- Compte rendu PDF
- Script de création de base de données créée manuellement
- Script de création de base de données généré par pgModeler
- Script de peuplement de la base de données manuelle
- Fichiers .csv des données


## Technologies utilisées

- Outils : pgModeler, postgreSQL
- Langage SQL : Création de tables, requêtes SQL, relations entre données


## Installation

1. Cloner le dépôt :

   ```bash
   git clone https://github.com/Solene0971/database-creation.git
   cd database-creation

2. Lancer les scripts dans une base de données :
   ```bash
   \i src/script_database.sql
   \i src/script_peuplement.sql


## Auteurs
>Solène Bourg [@Solene0971](https://github.com/Solene0971/)  
