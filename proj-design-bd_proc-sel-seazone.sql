# ==== PROJETO DE CRIAÇÃO DO BANCO DE DADOS PARA O CODE CHALLENGE - APIs BackEnd DA EMPRESA SEAZONE ==== #

# =============================================== PARTE 1 =============================================== #
#===================================== CRIAÇÃO E CONFIGURAÇÃO DO BD =====================================#
#=========================================================================================================#

-- O primeiro passo é CRIAR e CONFIGURAR o banco de dados 'procselseazone'.

-- >
CREATE DATABASE procselseazone;
USE procselseazone;

# =============================================== PARTE 2 =============================================== #
#========================================== CRIAÇÃO DAS TABELAS ==========================================#
#=========================================================================================================#

-- Neste projeto serão criado 3 tabelas: Imóveis, Anúncios e Reservas.

/*
TABELA 1: properties
-> property_id
-> guest_limit
-> amount_retroon
-> accept_pet
-> cleaning_value
-> activation_date
-> creation_date_time
-> update_date_time
*/

CREATE TABLE properties(
	property_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    guest_limit INT NOT NULL,
    amount_retroon INT NOT NULL,
    accept_pet BOOLEAN NOT NULL,
    cleaning_value DECIMAL(10, 2) NOT NULL,
    activation_date DATE NOT NULL,
    creation_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM properties;


/*
TABELA 2: adverts
-> advert_id
-> property_id
-> ads_plataform
-> plataform_value
-> creation_date_time
-> update_date_time
*/

CREATE TABLE adverts(
	advert_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    ads_plataform VARCHAR(50) NOT NULL,
    plataform_value DECIMAL(10, 2) NOT NULL,
    creation_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM adverts;


/*
TABELA 3: reservations
-> reservation_id
-> advert_id
-> checkin_date
-> checkout_date
-> total_price
-> comments
-> number_of_guests
-> creation_date_time
-> update_date_time
*/

CREATE TABLE reservations(
	reservation_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    advert_id INT NOT NULL,
    checkin_date DATE NOT NULL,
    checkout_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    comments VARCHAR(250) NOT NULL,
    number_of_guests INT NOT NULL,
    creation_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    update_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM reservations;


-- >


# =============================================== PARTE 3 =============================================== #
#===================================== ADICIONANDO VALORES NA TABELA =====================================#
#=========================================================================================================#

/*
TABELA 1: properties

Adicione os valores abaixo na tabela 'properties':

property_id | guest_limit | amount_retroon | accept_pet | cleaning_value | activation_date | creation_date_time  |  update_date_time
________________________________________________________________________________________________________________________________________
     1      |      8      |       3        |    true    |       150      |    25/03/2020   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     2      |      15     |       5        |    true    |       300      |    12/08/2021   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     3      |      3      |       1        |    false   |       90       |    02/11/2019   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     4      |      10     |       3        |    true    |       250      |    07/12/2021   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     5      |      5      |       2        |    true    |       150      |    24/11/2022   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     6      |      12     |       4        |    true    |       250      |    26/04/2020   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     7      |      4      |       2        |    true    |       150      |    13/09/2021   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     8      |      2      |       1        |    false   |       150      |    03/12/2019   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     9      |      6      |       2        |    true    |       150      |    08/01/2021   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
     10     |      3      |       1        |    true    |       150      |    27/05/2020   | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
*/

INSERT INTO properties(guest_limit, amount_retroon, accept_pet, cleaning_value, activation_date)
VALUES 
	(8, 3, true, 150, "2020-03-25"),
    (15, 5, true, 300, "2021-08-12"),
    (3, 1, false, 90, "2019-11-02"),
    (10, 3, true, 250, "2021-12-07"),
    (5, 2, true, 150, "2022-11-24"),
    (12, 4, true, 250, "2020-04-26"),
    (4, 2, true, 150, "2021-09-13"),
    (2, 1, false, 150, "2019-12-03"),
    (6, 2, true, 150, "2021-01-08"),
    (3, 1, true, 150, "2020-05-27");
    
SELECT * FROM properties;

-- >

/*
TABELA 2: adverts

Adicione os valores abaixo na tabela 'adverts':

advert_id | property_id | ads_plataform | plataform_value | creation_date_time  |  update_date_time
_______________________________________________________________________________________________________
	1     |      3      |    Seazone    |       150       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	2     |      10     |     AirBnb    |       100       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	3     |      8      |    Seazone    |       150       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	4     |      1      |    AirBnb     |       250       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	5     |      5      |     BMGI      |       300       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	6     |      9      |    Trivago    |       100       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	7     |      4      |     BMGI      |       300       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	8     |      2      |    Seazone    |       150       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	9     |      6      |     BMGI      |       300       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
	10    |      7      |    Seazone    |       150       | 2022-11-25 12:23:05 | 2022-11-25 12:23:05 |
*/

INSERT INTO adverts(property_id, ads_plataform, plataform_value)
VALUES 
	(3, "Seazone", 150),
    (10, "AirBnb", 100),
    (8, "Seazone", 150),
    (1, "AirBnb", 250),
    (5, "BMGI", 300),
    (9, "Trivago", 100),
    (4, "BMGI", 300),
    (2, "Seazone", 150),
    (6, "BMGI", 300),
    (7, "Seazone", 150);
    
SELECT * FROM adverts;

-- >

/*
TABELA 3: reservations

Adicione os valores abaixo na tabela 'reservations':

reservation_id |  advert_id  |  checkin_date  | checkout_date |   total_price  |     comments    | number_of_guests | creation_date_time  |  update_date_time
_________________________________________________________________________________________________________________________________________________________________
       1       |      8      |   25/03/2023   |  25/04/2023   |       1500     |       Ok.       |        8         |  |  |
       2       |      5      |   12/08/2023   |  12/10/2023   |       3000     |      Top...     |        15        | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       3       |      3      |   22/12/2022   |  22/02/2023   |       900      |     Yheahh!     |        3         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       4       |      10     |   07/12/2022   |  07/01/2023   |       2500     |       Nice      |        10        | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       5       |      7      |   24/12/2022   |  24/03/2023   |       1800     |      I go!      |        5         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       6       |      1      |   02/04/2023   |  02/08/2023   |       600      |      Clean      |        8         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       7       |      4      |   07/05/2023   |  07/07/2023   |       750      |   Love so Much  |        3         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       8       |      2      |   12/11/2023   |  12/05/2024   |       1325     |    I come back  |        5         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       9       |      6      |   15/03/2023   |  15/04/2023   |       1200     |    Talk to me   |        2         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
       10      |      9      |   25/11/2022   |  25/01/2023   |       354      |    Big house    |        6         | 2022-11-25 11:50:58 | 2022-11-25 11:50:58 |
*/

INSERT INTO reservations(advert_id, checkin_date, checkout_date, total_price, comments, number_of_guests)
VALUES 
	(8, "2023-03-25", "2023-04-25", 1500, "Ok.", 8),
    (5, "2023-08-12", "2023-10-12", 3000, "Top...", 15),
    (3, "2022-12-22", "2023-02-22", 900, "Yheahh!", 3),
    (10, "2022-12-07", "2023-01-07", 2500, "Nice", 10),
    (7, "2022-12-24", "2023-03-24", 1800, "I go!", 5),
    (1, "2023-04-02", "2023-08-02", 600, "Clean", 8),
    (4, "2023-05-07", "2023-07-07", 750, "Love so Much", 3),
    (2, "2023-11-12", "2024-05-12", 1325, "I come bac", 5),
    (6, "2023-03-15", "2023-04-15", 1200, "Talk to me", 2),
    (9, "2022-11-25", "2023-01-25", 354, "Big house", 6);
    
SELECT * FROM reservations;

-- >
