# SAÉ S104 – Création d'une Base de Données sur les Catastrophes Climatiques

## Contexte  
Ce projet a été réalisé dans le cadre de la SAÉ S104 du BUT Informatique (IUT Villetaneuse, Université Sorbonne Paris Nord).

L’objectif de ce projet était de concevoir une base de données relationnelle permettant d’analyser la fréquence des catastrophes climatiques dans différents pays. Une autre finalité était de comparer l’approche manuelle (script SQL) avec l’utilisation d’un Atelier de Génie Logiciel (AGL), en l’occurrence **pgModeler**, pour la modélisation des tables.

---

## Livrables

- Compte rendu PDF  
- Script de création de base de données (manuel)  
- Script de création de base de données (généré par pgModeler)  
- Script de peuplement de la base de données  
- Fichiers `.csv` des données

---

## Technologies utilisées

- **Outils** : pgModeler, PostgreSQL  
- **Langage** : SQL (création de tables, requêtes SQL, relations entre données)

---

## Installation

### 1. Prérequis
- **PostgreSQL** (version ≥ 14 recommandée)
- (Optionnel) **pgAdmin** : Interface graphique pour gérer PostgreSQL.

---

### 2. Installation de PostgreSQL

#### Sous Windows
1. Télécharger PostgreSQL depuis : [https://www.postgresql.org/download/windows/](https://www.postgresql.org/download/windows/)
2. Lancer l’installeur et suivre les instructions.
3. Pendant l'installation :
   - Définir un mot de passe pour l’utilisateur `postgres` (notez-le, vous en aurez besoin pour vous connecter).
   - Laisser les paramètres par défaut.
4. Une fois installé, vous pouvez :
   - Utiliser **SQL Shell (psql)** pour exécuter les scripts via le terminal PostgreSQL.
   - Ou utiliser **pgAdmin** pour gérer visuellement la base.

#### Sous Linux (Debian/Ubuntu)
1. Ouvrir un terminal et exécuter :
```bash
sudo apt update
sudo apt install postgresql
```
2. Démarrer le service PostgreSQL :
```bash
sudo service postgresql start
```
3. Passer à l’utilisateur PostgreSQL :
```bash
sudo -i -u postgres
```
4. Lancer le terminal PostgreSQL :
```bash
psql
```

---

### 3. Cloner le projet

Dans votre terminal, exécutez :
```bash
git clone https://github.com/Solene0971/database-creation.git
cd database-creation
```

---

### 4. Création et peuplement de la base de données

Dans le terminal PostgreSQL (`psql`) :
```sql
\i src/script_database.sql
\i src/script_peuplement.sql
```

---

### 5. Vérification

Exécutez une requête simple pour vérifier que la base est bien remplie :
```sql
SELECT * FROM pays;
SELECT * FROM catastrophe;
```

---

### Auteur

Solène Bourg [Solene0971](https://github.com/Solene0972)
