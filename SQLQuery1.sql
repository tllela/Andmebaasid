CREATE DATABASES TITpv24baas;

--ad kustutamine
DROP DATABASE PraktikaBaas;

use TITpvbaas;
--tabeli loomine
CREATE TABLE opilane(
opilaneID int Primary key identity(1,1), --automaatselt täibsd numbri
eesnimi varchar(25),
perenimi varchar(30) NOT NULL,
synniaeg DATE,
stip bit,
mobiil varchar(13),
aadress TEXT,
keskmineHinne decimal(2,1) --(2--kokku, 1-peale komatnt 4.5)
);
SELECT * FROM opilane;
--tabeli taitmine
INSERT INTO opilane
VALUES ('Veronika', 'Lagvinenko', '2008-08-13',1, '+372564', 'Tallinn', 4.5);

INSERT INTO opilane(perenimi,eesnimi, keskmineHinne)
VALUES ('Talibova', 'Leyla', 4.2),
('Vasilenko', 'Vasilisa', 4.2),
('Malyhina', 'Yaroslava', 4.2);

--admete uue
UPDATE opilane SET stip=1, aadress='Tallinn';

UPDATE opilane SET stip=1, aadress='Tartu' WHERE opilaneID=5;
DROP TABLE opilane;
DELETE FROM opilane WHERE opilaneID=2;
Select * from opilane;

