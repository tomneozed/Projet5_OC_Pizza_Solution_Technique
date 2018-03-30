
CREATE TABLE public.Ingredients (
                nom VARCHAR(30) DEFAULT 'Nouvel ingredient' NOT NULL,
                Type VARCHAR(30) NOT NULL,
                CONSTRAINT ingredients_pk PRIMARY KEY (nom)
);


CREATE TABLE public.Pizza (
                nom VARCHAR(30) DEFAULT 'Nouvelle pizza' NOT NULL,
                prix REAL NOT NULL,
                preparation VARCHAR(400) NOT NULL,
                temps_cuisson VARCHAR NOT NULL,
                CONSTRAINT pizza_pk PRIMARY KEY (nom)
);


CREATE TABLE public.Composition (
                pizza_nom VARCHAR(30) DEFAULT 'Nouvelle pizza' NOT NULL,
                ingredient_nom VARCHAR(30) DEFAULT 'Nouvel ingredient' NOT NULL,
                CONSTRAINT composition_pk PRIMARY KEY (pizza_nom, ingredient_nom)
);


CREATE SEQUENCE public.point_de_vente_id_seq;

CREATE TABLE public.Point_de_vente (
                id INTEGER NOT NULL DEFAULT nextval('public.point_de_vente_id_seq'),
                horaires VARCHAR NOT NULL,
                CONSTRAINT point_de_vente_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.point_de_vente_id_seq OWNED BY public.Point_de_vente.id;

CREATE TABLE public.Adresse_pdv (
                point_de_vente_id INTEGER NOT NULL,
                numero_rue VARCHAR NOT NULL,
                code_postal INTEGER NOT NULL,
                ville VARCHAR NOT NULL,
                CONSTRAINT adresse_pdv_pk PRIMARY KEY (point_de_vente_id)
);


CREATE SEQUENCE public.stock_id_seq;

CREATE TABLE public.Stock (
                id INTEGER NOT NULL DEFAULT nextval('public.stock_id_seq'),
                quantite_kg REAL NOT NULL,
                prix_au_kilo REAL NOT NULL,
                date_achat VARCHAR NOT NULL,
                date_peremption VARCHAR NOT NULL,
                ingredient_nom VARCHAR(30) DEFAULT 'Nouvel ingredient' NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                CONSTRAINT stock_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.stock_id_seq OWNED BY public.Stock.id;

CREATE TABLE public.Carte (
                pizza_nom VARCHAR(30) DEFAULT 'Nouvelle pizza' NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                CONSTRAINT carte_pk PRIMARY KEY (pizza_nom, point_de_vente_id)
);


CREATE SEQUENCE public.client_id_seq;

CREATE TABLE public.Client (
                id INTEGER NOT NULL DEFAULT nextval('public.client_id_seq'),
                prenom VARCHAR(40) NOT NULL,
                sexe VARCHAR(1) DEFAULT 'D' NOT NULL,
                numero_tel VARCHAR(10) NOT NULL,
                adresse_mail VARCHAR(40) NOT NULL,
                nom VARCHAR(40) NOT NULL,
                CONSTRAINT client_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.client_id_seq OWNED BY public.Client.id;

CREATE TABLE public.Adresse_client (
                client_id INTEGER NOT NULL,
                numero_rue VARCHAR NOT NULL,
                code_postal INTEGER NOT NULL,
                ville VARCHAR NOT NULL,
                CONSTRAINT adresse_client_pk PRIMARY KEY (client_id)
);


CREATE SEQUENCE public.employe_id_seq;

CREATE TABLE public.Employe (
                id INTEGER NOT NULL DEFAULT nextval('public.employe_id_seq'),
                nom VARCHAR(40) NOT NULL,
                prenom VARCHAR(40) NOT NULL,
                sexe VARCHAR(1) DEFAULT 'D' NOT NULL,
                numero_tel VARCHAR(10) NOT NULL,
                adresse_mail VARCHAR(40) NOT NULL,
                poste VARCHAR(20) NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.employe_id_seq OWNED BY public.Employe.id;

CREATE SEQUENCE public.commande_id_seq;

CREATE TABLE public.Commande (
                id INTEGER NOT NULL DEFAULT nextval('public.commande_id_seq'),
                date_livraison DATE NOT NULL,
                moyen_paiement VARCHAR(30) NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                livreur_id INTEGER NOT NULL,
                client_id INTEGER NOT NULL,
                CONSTRAINT commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.commande_id_seq OWNED BY public.Commande.id;

CREATE SEQUENCE public.pizza_dans_commande_id_seq;

CREATE TABLE public.Pizza_dans_commande (
                id INTEGER NOT NULL DEFAULT nextval('public.pizza_dans_commande_id_seq'),
                pizza_nom VARCHAR(30) DEFAULT 'Nouvelle pizza' NOT NULL,
                point_de_vente_id INTEGER NOT NULL,
                commande_id INTEGER NOT NULL,
                CONSTRAINT pizza_dans_commande_pk PRIMARY KEY (id)
);


ALTER SEQUENCE public.pizza_dans_commande_id_seq OWNED BY public.Pizza_dans_commande.id;

ALTER TABLE public.Composition ADD CONSTRAINT ingredients_composition_fk
FOREIGN KEY (ingredient_nom)
REFERENCES public.Ingredients (nom)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT ingredients_stock_fk
FOREIGN KEY (ingredient_nom)
REFERENCES public.Ingredients (nom)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Carte ADD CONSTRAINT pizza_carte_fk
FOREIGN KEY (pizza_nom)
REFERENCES public.Pizza (nom)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Composition ADD CONSTRAINT pizza_composition_fk
FOREIGN KEY (pizza_nom)
REFERENCES public.Pizza (nom)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT point_de_vente_employe_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.Point_de_vente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Carte ADD CONSTRAINT point_de_vente_carte_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.Point_de_vente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT point_de_vente_commande_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.Point_de_vente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT point_de_vente_stock_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.Point_de_vente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Adresse_pdv ADD CONSTRAINT point_de_vente_adresse_pdv_fk
FOREIGN KEY (point_de_vente_id)
REFERENCES public.Point_de_vente (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pizza_dans_commande ADD CONSTRAINT carte_pizza_dans_commande_fk
FOREIGN KEY (pizza_nom, point_de_vente_id)
REFERENCES public.Carte (pizza_nom, point_de_vente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (client_id)
REFERENCES public.Client (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Adresse_client ADD CONSTRAINT client_adresse_client_fk
FOREIGN KEY (client_id)
REFERENCES public.Client (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT employe_commande_fk
FOREIGN KEY (livreur_id)
REFERENCES public.Employe (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pizza_dans_commande ADD CONSTRAINT commande_pizza_dans_commande_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;