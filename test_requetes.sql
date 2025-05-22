-- Requête 1 : Afficher la liste des noms des focaccias par ordre alphabétique croissant :
-- résultat attendu : Américaine, Emmentalaccia, Gorgonzollaccia, Hawaienne, Mozaccia, Paysanne, Raclaccia, Tradizione
-- résultat obtenu : idem
SELECT nom_focaccia FROM focaccia ORDER BY nom_focaccia ASC;

-- Requête 2 : Afficher le nombre total d'ingrédients :
-- résultat attendu : 25
SELECT COUNT (*) AS total_ingredients FROM ingredient;

-- Requête 3 : Aficher le prix moyen des focaccias :
-- résultat attendu : 10.37
-- résultat obtenu : idem
SELECT AVG(prix) AS prix_moyen FROM Focaccia;

-- Requête 4 : Afficher la liste des boissons avec leur marque, triée par nom de boison :
-- résultat attendu : 12 boissons avec leur marque ([nom_boisson: CAPRI-SUN... - PEPSI MAX ZÉRO...])
-- résultat obtenu : idem
SELECT b.nom_boisson, m.nom_marque
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom_boisson;

-- Requête 5 : Afficher la liste des ingrédients pour une Raclaccia :
-- résultat attendu :Ail, Base Tomate, Champignon, Cresson, Parmesan, Poivre, Raclette
-- résultat obtenu : idem
SELECT i.nom_ingredient FROM ingredient i
 JOIN comprend c ON i.id_ingredient = c.id_ingredient 
 JOIN focaccia f ON f.id_focaccia = c.id_focaccia 
 WHERE f.nom_focaccia = 'Raclaccia';

 -- Requête 6 : Afficher le nom et le nombre d'ingrédients pour chaque focaccias :
 -- résultat attendu :(10, 8, 7, 7, 9, 9, 8, 12)
 SELECT f.nom_focaccia, COUNT(c.id_ingredient) AS nb_ingredients
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.id_focaccia;

-- Requête 7 : Afficher le nom de la focaccia qui a le plus d'ingrédients :
-- résultat attendu : Paysanne
-- résultat obtenu : idem
SELECT f.nom_focaccia
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
GROUP BY f.id_focaccia
ORDER BY COUNT(c.id_ingredient) DESC
LIMIT 1;

-- Requête 8 : Afficher la liste des focaccias qui contiennent de l'ail :
-- résultat attendu : (Mozaccia, Gorgonzollaccia, Raclaccia, Paysanne)
-- résultat obtenu : idem
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
JOIN comprend c ON f.id_focaccia = c.id_focaccia
JOIN ingredient i ON i.id_ingredient = c.id_ingredient
WHERE i.nom_ingredient = 'Ail';

-- Requête 9 : Afficher la liste des ingrédients inutilisés :
-- résultat attendu : (salami, Tomate cerise)
-- résultat obtenu : idem
SELECT i.nom_ingredient
FROM ingredient i
LEFT JOIN comprend c ON i.id_ingredient = c.id_ingredient
WHERE c.id_ingredient IS NULL;

-- Requête 10 : Affficher la liste des focaccia qui n'ont pas de champignons :
-- résultat attendu : (Hawaienne, Américaine)
-- résultat obtenu : idem
SELECT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
  SELECT c.id_focaccia
  FROM comprend c
  JOIN ingredient i ON c.id_ingredient = i.id_ingredient
  WHERE i.nom_ingredient = 'Champignon'
);



