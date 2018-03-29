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
	(nom)
VALUES
-------- Sauces --------------
	('Sauce tomate'),
	('Creme fraiche'),
	('Sauce blanche'),
-------- Fromages ------------
	('Frommage emmental'),
	('Frommage de chevre'),
	('Reblochon'),
	('Fourme d Ambert'),
	('Mozzarella'),
-------- Viandes -------------	
	('Jambon'),
	('Poulet'),
	('Boeuf'),
	('Chorizo'),
	('Merguez'),
	('Lardons'),
-------- Légumes -------------
	('Olives'),
	('Champignons'),
	('Poivron'),
	('Oignons'),
	('Coeurs d artichauts'),
	('Pignons de pin'),
-------- Epices -------------
	('Origan'),
	('Curry'),
	('Curcuma'),
	('Fenouil'),
	('Origan')
;

	
	
	