# Tifosi - Base de données MySQL pour un restaurant italien

Projet réalisé dans le cadre de ma formation **Webmaster Full Stack**.

## Objectif du projet

Le restaurant italien _Le Tifosi_ souhaite gérer dynamiquement ses menus, ingrédients, boissons, et les achats des clients.  
L'objectif est de créer une base de données relationnelle permettant de :

- Gérer les focaccias, leurs ingrédients et leurs prix
- Associer chaque menu à des boissons
- Suivre les achats des clients
- Exécuter des requêtes de test pour analyse

---

## Contenu du dépôt

| Fichier                 | Rôle                                                                               |
| ----------------------- | ---------------------------------------------------------------------------------- |
| `creation_schema.sql`   | Création du schéma de la base (tables, clés primaires/étrangères, types, index...) |
| `insertion_donnees.sql` | Insertion des données de test dans toutes les tables                               |
| `test_requetes.sql`     | 10 requêtes SQL pour vérifier le bon fonctionnement de la base                     |
| `README.md`             | Ce fichier de documentation                                                        |

---

## Utilisation du projet

### Étapes à suivre :

1. Créer une base de données vide dans **phpMyAdmin** (nommée `tifosi`)
2. Exécuter le script `creation_schema.sql`
3. Exécuter le script `insertion_donnees.sql`
4. Tester les requêtes avec `test_requetes.sql`

---

## Requêtes de test incluses

1. Afficher toutes les focaccias par ordre alphabétique
2. Nombre total d'ingrédients
3. Prix moyen des focaccias
4. Boissons et leurs marques
5. Ingrédients d'une focaccia donnée (ex : Raclaccia)
6. Nombre d'ingrédients par focaccia
7. Focaccia ayant le plus d'ingrédients
8. Focaccias contenant de l'ail
9. Ingrédients non utilisés
10. Focaccias sans champignons

---

## Technologies utilisées

- MySQL / MariaDB
- phpMyAdmin
- Excel (pour préparer les données)
- Visual Studio Code
- Git / GitHub

---

## Auteur

> Réalisé par William
> Formation : Webmaster Full Stack CEF
> Date : Mai 2025
