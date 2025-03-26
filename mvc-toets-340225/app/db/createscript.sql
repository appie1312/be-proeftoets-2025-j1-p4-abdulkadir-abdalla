DROP DATABASE IF EXISTS `mvc-proeftoets`;

CREATE DATABASE `mvc-proeftoets`;

USE `mvc-proeftoets`;

CREATE TABLE Smartphones
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Merk               VARCHAR(50) NOT NULL,
     Model              VARCHAR(50) NOT NULL,
     Prijs              DECIMAL(6,2) NOT NULL,
     Geheugen           DECIMAL(4,0) NOT NULL,
     Besturingssysteem  VARCHAR(25) NOT NULL,
     Schermgrootte      DECIMAL(4,2) NOT NULL,
     Releasedatum       DATE NOT NULL,
     Gewicht            DECIMAL(3,0) NOT NULL,
     Simlockvrij        BIT NOT NULL DEFAULT 1,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Smartphones_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Smartphones
(
      Merk
     ,Model
     ,Prijs
     ,Geheugen
     ,Besturingssysteem
     ,Schermgrootte
     ,Releasedatum
     ,Gewicht
     ,Simlockvrij
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Apple', 'iPhone 16 Pro', 1260, 512, 'iOS 18', 6.7, '2024-09-14', 234, 0,  1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Samsung', 'Galaxy S25 Ultra', 1324, 256, 'Android 15', 8.1, '2024-09-20', 123, 1,  1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Google', 'Pixel 9 Pro', 1152, 1000, 'Android 15', 9.0, '2025-01-20', 280, 1, 1, NULL, SYSDATE(6), SYSDATE(6));

CREATE TABLE Sneakers
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Merk               VARCHAR(50) NOT NULL,
     Model              VARCHAR(50) NOT NULL,
     Type               VARCHAR(25) NOT NULL,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Sneakers_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Sneakers
(
      Merk
     ,Model
     ,Type
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Nike', 'Air Jordan 1', 'Basketbal', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Adidas', 'Yeezy Boost 350', 'Casual', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('New Balance', 'Pixel 9 Pro', 'Hardloop', 1, NULL, SYSDATE(6), SYSDATE(6));

CREATE TABLE Horloges
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Merk               VARCHAR(50) NOT NULL,
     Model              VARCHAR(50) NOT NULL,
     Prijs              DECIMAL(6,0) NOT NULL,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Horloges_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Horloges
(
      Merk
     ,Model
     ,Prijs
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Rolex', 'Daytona 126500LN', 19800, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Omega', 'Speedmaster Moonwatch Professional', 8500, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Vacheron Constantin', 'Overseas Perpetual Calendar Ultra-Thin', 98000, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Jaeger-LeCoultre', 'Reverso Tribute Duoface', 17000, 1, NULL, SYSDATE(6), SYSDATE(6));

CREATE TABLE Torens
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Naam               VARCHAR(50) NOT NULL,
     Locatie            VARCHAR(50) NOT NULL,
     Hoogte             DECIMAL(6,0) NOT NULL,
     AantalVerdiepingen DECIMAL(4,0) NOT NULL,
     JaarVoltooid       YEAR NOT NULL,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Torens_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Torens
(
      Naam
     ,Locatie
     ,Hoogte
     ,AantalVerdiepingen
     ,JaarVoltooid
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('Burj Khalifa', 'Dubai, VAE', 828, 163, 2010, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Merdeka 118', 'Kuala Lumpur, Maleisië', 679, 118, 2023, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Shanghai Tower', 'Shanghai, China', 632, 128, 2015, 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Abraj Al Bait Clock Tower', 'Mekka, Saoedi-Arabië', 601, 120, 2012, 1, NULL, SYSDATE(6), SYSDATE(6));

CREATE TABLE Speakers
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Naam               VARCHAR(50) NOT NULL,
     Batterijduur       TINYINT UNSIGNED NOT NULL,
     Waterbestendigheid VARCHAR(50) NOT NULL,
     Connectiviteit     VARCHAR(30) NOT NULL,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Speakers_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Speakers
(
      Naam
     ,Batterijduur
     ,Waterbestendigheid
     ,Connectiviteit
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
 ('JBL Charge 5', 20, 'IP67 (stof- en waterdicht)', 'Bluetooth 5.1', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Bose SoundLink Flex', 12, 'IP67 (water- en stofdicht)', 'Bluetooth 4.2', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Sony SRS-XB43', 24, 'IP67 (water-, stof- en roestbestendig)', 'Bluetooth 5.0, NFC', 1, NULL, SYSDATE(6), SYSDATE(6)),
 ('Ultimate Ears (UE) Boom 3', 15, 'IP67 (waterdicht en drijvend!)', 'Bluetooth 5.0', 1, NULL, SYSDATE(6), SYSDATE(6));

CREATE TABLE Zangeres
(
     Id                 SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
     Naam               VARCHAR(50) NOT NULL,
     Nettowaarde        SMALLINT UNSIGNED NOT NULL,
     Land               VARCHAR(50) NOT NULL,
     Mobiel             VARCHAR(30) NOT NULL,
     Leeftijd           TINYINT UNSIGNED NOT NULL,
     IsActief           BIT NOT NULL DEFAULT 1,
     Opmerking          VARCHAR(255) NULL DEFAULT NULL,
     DatumAangemaakt    DATETIME(6) NOT NULL,
     DatumGewijzigd     DATETIME(6) NOT NULL,
     CONSTRAINT PK_Zangeres_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;

INSERT INTO Zangeres
(
      Naam
     ,Nettowaarde
     ,Land
     ,Mobiel
     ,Leeftijd
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
  ('Rihanna', 1400, 'Barbados', '+1246 2400 1862400', 36, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Madonna', 575, 'Verenigde Staten', '+13425 182345', 65, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Taylor Swift', 570, 'Verenigde Staten', '+13421 231356', 34, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Beyoncé', 420, 'Verenigde Staten', '+18723 213481', 41, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Jennifer Lopez', 400, 'Verenigde Staten', '+16254 751243', 54, 1, NULL, SYSDATE(6), SYSDATE(6));



 
-- Step: 14
-- *****************************************************************************************************
-- Doel : Maak een nieuwe tabel aan met de naam Vulkaan
-- *****************************************************************************************************
-- Versie       Datum           Auteur              Omschrijving
-- ******       *****           ******              ************
-- 01           26-03-2025      Arjan de Ruijter    Tabel Vulkaan
-- *****************************************************************************************************
-- Onderstaande velden zelf toevoegen aan de tabel Vulkaan
-- *****************************************************************************************************
CREATE TABLE Vulkaan
(
     Id                       INT            UNSIGNED    NOT NULL        AUTO_INCREMENT,
     Naam                     VARCHAR(250)               NOT NULL,
     Hoogte                   INT            UNSIGNED    NOT NULL,
     Land                     VARCHAR(250)               NOT NULL,
     JaarLaatsteUitbarsting   YEAR          NOT NULL,
     AantalSlachtoffers       INT            UNSIGNED    NOT NULL,
     IsActief                 TINYINT(1)                 NOT NULL        DEFAULT 1,
     Opmerking                VARCHAR(255)               NULL,
     DatumAangemaakt          DATETIME(6)    NOT NULL,
     DatumGewijzigd           DATETIME(6)    NOT NULL,
     CONSTRAINT PK_Vulkaan_Id PRIMARY KEY (Id)
) ENGINE=InnoDB;



INSERT INTO Vulkaan
(
      Naam
     ,Hoogte
     ,Land
     ,JaarLaatsteUitbarsting
     ,AantalSlachtoffers
     ,IsActief
     ,Opmerking
     ,DatumAangemaakt
     ,DatumGewijzigd
)
VALUES
  ('Eyjafjallajökul', 1666, 'IJsland', 2010, 1, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Vesuvius', 1281, 'Italië', 1944, 26, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Sakurajima', 1117, 'Japan', 2012, 2, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Merapi', 2910, 'Indonesië', 2020, 5, 1, NULL, SYSDATE(6), SYSDATE(6)),
  ('Nyiragongo', 3470, 'Democratische Republiek Congo', 2021, 15, 1, NULL, SYSDATE(6), SYSDATE(6));
