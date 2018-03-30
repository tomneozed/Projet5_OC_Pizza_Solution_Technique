INSERT INTO public.pizza 
	(nom, prix, preparation, temps_cuisson)
VALUES 
	('Marguerita', 11.5, 'Faire la pate, ajouter la sauce tomate puis le fromage et les olives. Mettre à cuire', '10 min'),
	('Marguerita jambon', 12.5, 'Faire la pate, ajouter la sauce tomate puis le fromage, le jambon et les olives. Mettre à cuire', '11 min'),
	('Campagnarde', 11.9, 'Faire la pate, ajouter la sauce tomate puis les champignons, le fromage de chèvre, l origan et les olives. Mettre à cuire.', '10 min'),
	('Regina', 13.5, 'Faire la pate, ajouter la sauce tomate puis le fromage, le jambon, les champignons et les olives. Mettre à cuire', '10 min'),
	('Chorizo', 13.5, 'Faire la pate, ajouter la sauce tomate, le chorizo, les poivrons puis le fromage et les olives. Mettre à cuire', '13 min'),
	('Orientale', 13.5, 'Faire la pate, ajouter la sauce tomate, les merguez, les poivrons puis le fromage et les olives. Mettre à cuire', '10 min'),
	('Royale', 13.5, 'Faire la pate, ajouter la sauce tomate, les champignons, le jambon, les lardons, les oignons puis le fromage et les olives. Mettre à cuire', '14 min'),
	('4 Saisons', 13.5, 'Faire la pate, ajouter la sauce tomate, les champignons, le jambon, les coeurs d artichauts puis le fromage et les olives. Mettre à cuire', '9 min'),
	('3 Fromages', 14.5, 'Faire la pate, ajouter la sauce tomate, le fromage de chèvre, l emmental, la mozzarella, la crème fraiche et les olives. Mettre à cuire', '11 min'),
	('Basquaise', 14.5, 'Faire la pate, ajouter la sauce tomate, le poulet, les poivrons, les oignons, les tomates fraiches, l origan puis le fromage et les olives. Mettre à cuire', '10 min'),
	('Savoyarde', 14.9, 'Faire la pate, ajouter la crème fraiche, les pommes de terre, les lardons, les oignons, le reblochon puis le fromage et les olives. Mettre à cuire', '13 min'),
	('Kebab', 14.9, 'Faire la pate, ajouter la sauce tomate, la viande kebab, les tomates fraiches, les oignons, la sauce blanche puis le fromage et les olives. Mettre à cuire', '10 min'),
	('Auvergnate', 14.9, 'Faire la pate, ajouter la crème fraiche, le fromage emmental, le confit d oignons, la fourme d Ambert, les pignons de pin, l origan et les olives. Mettre à cuire', '10 min')
;

INSERT INTO public.ingredients 
	(nom, type)
VALUES
-------- Sauces --------------
	('Sauce tomate', 'sauce'),
	('Creme fraiche', 'sauce'),
	('Sauce blanche', 'sauce'),
-------- Fromages ------------
	('Fromage emmental', 'fromage'),
	('Fromage de chevre', 'fromage'),
	('Reblochon', 'fromage'),
	('Fourme d Ambert', 'fromage'),
	('Mozzarella', 'fromage'),
-------- Viandes -------------	
	('Jambon', 'viande'),
	('Poulet', 'viande'),
	('Boeuf', 'viande'),
	('Chorizo', 'viande'),
	('Merguez', 'viande'),
	('Lardons', 'viande'),
	('Viande kebab', 'viande'),
-------- Légumes -------------
	('Olives', 'legume'),
	('Pommes de terre', 'legume'),
	('Champignons', 'legume'),
	('Poivron', 'legume'),
	('Oignons', 'legume'),
	('Coeurs d artichauts', 'legume'),
	('Pignons de pin', 'legume'),
	('Tomates fraiches', 'legume'),
-------- Epices -------------
	('Origan', 'epice'),
	('Curry', 'epice'),
	('Curcuma', 'epice'),
	('Fenouil', 'epice')
;

INSERT INTO public.point_de_vente
	(horaires)
VALUES
	('Mardi au Samedi de 12h-22h'),
	('Mardi au Samedi de 12h-22h'),
	('Mardi au Samedi de 12h-22h'),
	('Mardi au Samedi de 12h-22h'),
	('Mardi au Samedi de 12h-22h')
;

INSERT INTO public.adresse_pdv
	(point_de_vente_id, numero_rue, code_postal, ville)
VALUES
	(1, '18 rue des fleurs', 31000, 'Toulouse'),
	(2, '23 rue du pissenlit', 75000, 'Paris'),
	(3, '44 boulevard de la violette', 64000, 'Pau'),
	(4, '55bis avenue coquelicot', 69000, 'Lyon'),
	(5, '77 route de la tulipe', 13000, 'Marseille')
;

INSERT INTO public.stock
	(point_de_vente_id, ingredient_nom, quantite_kg, prix_au_kilo, date_achat, date_peremption)
VALUES
	(1, 'Sauce tomate', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Creme fraiche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Sauce blanche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Fromage emmental', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Fromage de chevre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Reblochon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Fourme d Ambert', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Mozzarella', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Jambon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Poulet', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Boeuf', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Chorizo', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Merguez', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Lardons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Viande kebab', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Olives', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Pommes de terre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Champignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Poivron', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Oignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Coeurs d artichauts', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Pignons de pin', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Tomates fraiches', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Origan', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Curry', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Curcuma', 10, 1.5, '29/03/2018', '29/05/2018'),
	(1, 'Fenouil', 10, 1.5, '29/03/2018', '29/05/2018'),
-------------------------------------------------------------------------------
	(2, 'Sauce tomate', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Creme fraiche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Sauce blanche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Fromage emmental', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Fromage de chevre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Reblochon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Fourme d Ambert', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Mozzarella', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Jambon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Poulet', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Boeuf', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Chorizo', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Merguez', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Lardons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Viande kebab', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Olives', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Pommes de terre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Champignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Poivron', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Oignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Coeurs d artichauts', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Pignons de pin', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Tomates fraiches', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Origan', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Curry', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Curcuma', 10, 1.5, '29/03/2018', '29/05/2018'),
	(2, 'Fenouil', 10, 1.5, '29/03/2018', '29/05/2018'),
-------------------------------------------------------------------------------
	(3, 'Sauce tomate', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Creme fraiche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Sauce blanche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Fromage emmental', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Fromage de chevre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Reblochon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Fourme d Ambert', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Mozzarella', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Jambon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Poulet', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Boeuf', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Chorizo', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Merguez', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Lardons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Viande kebab', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Olives', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Pommes de terre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Champignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Poivron', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Oignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Coeurs d artichauts', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Pignons de pin', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Tomates fraiches', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Origan', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Curry', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Curcuma', 10, 1.5, '29/03/2018', '29/05/2018'),
	(3, 'Fenouil', 10, 1.5, '29/03/2018', '29/05/2018'),
-------------------------------------------------------------------------------
	(4, 'Sauce tomate', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Creme fraiche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Sauce blanche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Fromage emmental', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Fromage de chevre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Reblochon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Fourme d Ambert', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Mozzarella', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Jambon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Poulet', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Boeuf', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Chorizo', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Merguez', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Lardons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Viande kebab', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Olives', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Pommes de terre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Champignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Poivron', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Oignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Coeurs d artichauts', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Pignons de pin', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Tomates fraiches', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Origan', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Curry', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Curcuma', 10, 1.5, '29/03/2018', '29/05/2018'),
	(4, 'Fenouil', 10, 1.5, '29/03/2018', '29/05/2018'),
-------------------------------------------------------------------------------
	(5, 'Sauce tomate', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Creme fraiche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Sauce blanche', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Fromage emmental', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Fromage de chevre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Reblochon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Fourme d Ambert', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Mozzarella', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Jambon', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Poulet', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Boeuf', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Chorizo', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Merguez', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Lardons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Viande kebab', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Olives', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Pommes de terre', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Champignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Poivron', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Oignons', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Coeurs d artichauts', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Pignons de pin', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Tomates fraiches', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Origan', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Curry', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Curcuma', 10, 1.5, '29/03/2018', '29/05/2018'),
	(5, 'Fenouil', 10, 1.5, '29/03/2018', '29/05/2018')
;


INSERT INTO public.composition
	(pizza_nom, ingredient_nom)
VALUES
	('Marguerita', 'Sauce tomate'),
	('Marguerita', 'Fromage emmental'),
	('Marguerita', 'Olives'),
	('Marguerita jambon', 'Sauce tomate'),
	('Marguerita jambon', 'Fromage emmental'),
	('Marguerita jambon', 'Olives'),
	('Marguerita jambon', 'Jambon'),
	('Campagnarde', 'Sauce tomate'),
	('Campagnarde', 'Fromage de chevre'),
	('Campagnarde', 'Olives'),
	('Campagnarde', 'Champignons'),
	('Campagnarde', 'Origan'),
	('Regina', 'Sauce tomate'),
	('Regina', 'Fromage emmental'),
	('Regina', 'Olives'),
	('Regina', 'Jambon'),
	('Regina', 'Champignons'),
	('Chorizo', 'Sauce tomate'),
	('Chorizo', 'Fromage emmental'),
	('Chorizo', 'Poivron'),
	('Chorizo', 'Olives'),
	('Chorizo', 'Chorizo'),
	('Orientale', 'Sauce tomate'),
	('Orientale', 'Merguez'),
	('Orientale', 'Olives'),
	('Royale', 'Sauce tomate'),
	('Royale', 'Champignons'),
	('Royale', 'Jambon'),
	('Royale', 'Fromage emmental'),
	('Royale', 'Olives'),
	('Royale', 'Lardons'),
	('Royale', 'Oignons'),
	('4 Saisons', 'Sauce tomate'),
	('4 Saisons', 'Champignons'),
	('4 Saisons', 'Jambon'),
	('4 Saisons', 'Fromage emmental'),
	('4 Saisons', 'Olives'),
	('4 Saisons', 'Coeurs d artichauts'),
	('3 Fromages', 'Sauce tomate'),
	('3 Fromages', 'Fromage de chevre'),
	('3 Fromages', 'Jambon'),
	('3 Fromages', 'Fromage emmental'),
	('3 Fromages', 'Olives'),
	('3 Fromages', 'Lardons'),
	('3 Fromages', 'Oignons'),
	('Basquaise', 'Sauce tomate'),
	('Basquaise', 'Poulet'),
	('Basquaise', 'Poivron'),
	('Basquaise', 'Fromage emmental'),
	('Basquaise', 'Olives'),
	('Basquaise', 'Origan'),
	('Basquaise', 'Oignons'),
	('Basquaise', 'Tomates fraiches'),
	('Savoyarde', 'Creme fraiche'),
	('Savoyarde', 'Pommes de terre'),
	('Savoyarde', 'Lardons'),
	('Savoyarde', 'Fromage emmental'),
	('Savoyarde', 'Olives'),
	('Savoyarde', 'Reblochon'),
	('Savoyarde', 'Oignons'),
	('Savoyarde', 'Tomates fraiches'),
	('Kebab', 'Sauce tomate'),
	('Kebab', 'Viande kebab'),
	('Kebab', 'Tomates fraiches'),
	('Kebab', 'Fromage emmental'),
	('Kebab', 'Olives'),
	('Kebab', 'Sauce blanche'),
	('Kebab', 'Oignons'),
	('Auvergnate', 'Creme fraiche'),
	('Auvergnate', 'Oignons'),
	('Auvergnate', 'Fourme d Ambert'),
	('Auvergnate', 'Pignons de pin'),
	('Auvergnate', 'Origan'),
	('Auvergnate', 'Olives'),
	('Auvergnate', 'Fromage emmental')
;

INSERT INTO public.carte
	(pizza_nom, point_de_vente_id)
VALUES
	('Marguerita', 1),
	('Campagnarde', 1),
	('Regina', 1),
	('Chorizo', 1),
	('Orientale', 1),
	('Royale', 1),
	('4 Saisons', 1),
	('Basquaise', 1),
	('Kebab', 1),
	('Auvergnate', 1),
	('Marguerita', 2),
	('Marguerita jambon', 2),
	('Campagnarde', 2),
	('Regina', 2),
	('Chorizo', 2),
	('Orientale', 2),
	('Royale', 2),
	('4 Saisons', 2),
	('3 Fromages', 2),
	('Basquaise', 2),
	('Savoyarde', 2),
	('Kebab', 2),
	('Auvergnate', 2),
	('Marguerita', 3),
	('Marguerita jambon', 3),
	('Regina', 3),
	('Chorizo', 3),
	('Orientale', 3),
	('4 Saisons', 3),
	('3 Fromages', 3),
	('Basquaise', 3),
	('Kebab', 3),
	('Auvergnate', 3),
	('Marguerita', 4),
	('Marguerita jambon', 4),
	('Campagnarde', 4),
	('Regina', 4),
	('Chorizo', 4),
	('Orientale', 4),
	('Royale', 4),
	('Basquaise', 4),
	('Savoyarde', 4),
	('Kebab', 4),
	('Marguerita', 5),
	('Marguerita jambon', 5),
	('Orientale', 5),
	('Royale', 5),
	('4 Saisons', 5),
	('3 Fromages', 5),
	('Basquaise', 5),
	('Savoyarde', 5),
	('Kebab', 5),
	('Auvergnate', 5)
;

INSERT INTO public.client
	(id, prenom, nom, sexe, numero_tel, adresse_mail)
VALUES
	(1, 'Alain', 'Terrieur', 'M', '0607080910', 'AlainTerrieur@gmail.com'),
	(2, 'Alex', 'Terrieur', 'M', '0607080911', 'AlexTerrieur@gmail.com'),
	(3, 'Georges', 'Washington', 'M', '0600121314', 'GeorgesWashington@gmail.com'),
	(4, 'Marie', 'Curry', 'F', '0607087910', 'MarieCurry@gmail.com'),
	(5, 'Josephine', 'Langegardien', 'F', '0607980910', 'JoséphineLangegardien@gmail.com'),
	(6, 'Marilyn', 'Monroe', 'F', '0607330910', 'MarilynMonroe@gmail.com'),
	(7, 'Gaston', 'Lagaffe', 'M','0707080450', 'GastonLagaffe@spirou.com'),
	(8, 'Shtroumpf', 'Farceur', 'M', '0607890910', 'ShtroumpfFarceur@sapareille.com'),
	(9, 'Gunter', 'Pauli', 'M', '0607770910', 'GunterPauli@BlueEconomy.com'),
	(10, 'Madame', 'Columbo', 'F','0601088510', 'MadameColumbo@tvBreitz.com')
;

INSERT INTO public.adresse_client
	(client_id, numero_rue, code_postal, ville)
VALUES
	(1, '3 rue de la connaissance', 31100, 'Toulouse'),
	(2, '3 rue de la connaissance', 31100, 'Toulouse'),
	(3, '23 rue du cerveau', 64120, 'Pau'),
	(4, '89 avenue du temps', 64050, 'Pau'),
	(5, '16 boulevard du biomimétisme', 69960, 'Lyon'),
	(6, '55 avenue du shitake', 69330, 'Lyon'),
	(7, '37 boulevard du nouveau', 13780, 'Marseille'),
	(8, '0 rue de la multiplication', 13310, 'Marseille'),
	(9, '15 avenue Babylone', 75630, 'Paris'),
	(10, '29 boulevard musique de barry white' , 75560, 'Paris')
;

INSERT INTO public.employe
	(id, point_de_vente_id, poste, prenom, nom, sexe, numero_tel, adresse_mail)
VALUES
	(101, 1, 'pizzaiolo','Stephen', 'Hawking', 'M', '0607080785', 'StephenHawking@gmail.com'),
	(102, 1, 'livreur','Wallace', 'Chan', 'M', '0607087851', 'WallaceChan@gmail.com'),
	(103, 2, 'pizzaiolo','Chimp', 'Anze', 'M', '0611121314', 'GeorgesWashington@gmail.com'),
	(104, 2, 'livreur','Elizabeth', 'Adams', 'F', '0604187910', 'ElizabethAdams@gmail.com'),
	(105, 3, 'pizzaiolo','Elizabeth', 'Blackwell', 'F', '0675980910', 'ElizabethBlackwell@gmail.com'),
	(106, 3, 'livreur','Madeleine', 'Bres', 'F', '0607000910', 'MadeleineBres@gmail.com'),
	(107, 4, 'pizzaiolo','Linus', 'Torvald', 'M','0707080789', 'LinusTorvald@linux.com'),
	(108, 4, 'livreur','Paul', 'Bigot', 'M', '0607888910', 'PaulBigot@gmail.com'),
	(109, 5, 'pizzaiolo','Pierre', 'Bardin', 'M', '0608570910', 'PierreBardin@gmail.com'),
	(110, 5, 'livreur','Katherine', 'Johnson', 'F','0689088510', 'KaterineJohnson@gmail.com')
;

INSERT INTO public.commande
	(point_de_vente_id, client_id, date_livraison, moyen_paiement, livreur_id)
VALUES
	(1, 1, '23/03/2018 19:15', 'Liquide', 102),
	(1, 2, '27/03/2018 20:00', 'En ligne', 102),
	(2, 3, '30/03/2018 19:00', 'En ligne', 104),
	(2, 4, '15/02/2018 19:45', 'Liquide', 104),
	(3, 5, '24/01/2018 18:45', 'En ligne', 106),
	(3, 6, '07/02/2018 20:15', 'En ligne', 106),
	(4, 7, '16/01/2018 21:15', 'Liquide', 108),
	(4, 8, '09/02/2018 21:30', 'Liquide', 108),
	(5, 9, '28/02/2018 20:15', 'En ligne', 110),
	(5, 10, '26/03/2018 19:45', 'Liquide', 110)
;

INSERT INTO public.pizza_dans_commande
	(point_de_vente_id, commande_id, pizza_nom)
VALUES
	(1, 1, 'Marguerita'),
	(1, 1, 'Marguerita'),
	(1, 1, 'Campagnarde'),
	(1, 2, 'Regina'),
	(1, 2, 'Chorizo'),
	(2, 3, 'Orientale'),
	(2, 4, 'Royale'),
	(2, 4, 'Basquaise'),
	(3, 5, 'Basquaise'),
	(3, 5, 'Kebab'),
	(3, 5, 'Auvergnate'),
	(3, 6, '4 Saisons'),
	(3, 6, '3 Fromages'),
	(3, 6, 'Marguerita'),
	(4, 7, 'Campagnarde'),
	(4, 7, 'Regina'),
	(4, 8, 'Chorizo'),
	(5, 9, 'Royale'),
	(5, 9, 'Basquaise'),
	(5, 9, 'Auvergnate'),
	(5, 10, '3 Fromages'),
	(5, 10, 'Kebab')
;







	
	