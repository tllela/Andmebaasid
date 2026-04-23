# Andmebaasid
# Andmebaasid
andmebaasidega seotud SQL kood ja konspektid

## Põhimõisted

- andmebaas - struktureeritud andmete kogum
- tabel - olem - сущность - entity
- veerg - väli - поле*столбец
- rida - kirje - запись
- andmebaasi haldussüsteem - tarkvara, millega abil saab luua andmebaas: mariaDB / XAMPP, SQL SERVER management Studio
- <img width="528" height="538" alt="{779BF74D-BC8B-4A89-8D95-003A54261B9B}" src="https://github.com/user-attachments/assets/c00fb4e6-aaa9-48c0-9289-ddcf106530e4" />

- primaarne võti - PRIMARY KEY - veerg (tavaliselt id nimega), unikaalne identifikaator, mis eristab iga kirje.
- välisvõti - FOREIGN KEY - FK - veerg, mis loob seos teise tabeli primaarvõtmega.
- päring - QUERY - запрос

## Andmetüübid

1. Numbrilised: INT, SmallINT, float, decimal(5,2)
2. Tekst/sümbolised: varchar(255), char(5), TEXT
3. Loogilised: boolean, true/false, bit, bool
4. Kuupäev: date, time, datetime

## SQL - structure Query Language - struktureeritud päringu keel
- Tabeli loomine
    ```
    CREATE TABLE opilane(
    opilaneID int Primary Key identity(1,1), --automaatselt täisab numbri
    eesnimi varchar(25),
    perenimi varchar(30) NOT NULL,
    synniaeg DATE,
    stip bit,
    mobiil varchar(13),
    aadress TEXT,
    keskmineHinne decimal(2,1) --(2--kokku, 1-peale komatnt 4.5)
    );

    SELECT * FROM opilane;

    ```

- Andmete sisetamine tabelisse

INSERT INTO opilane
VALUES ('Artjom', 'Jegorov', '2000-12-10', 1, '+325689', 'Tallinn', 4.5);

INSERT INTO opilane (perenimi, eesnimi, keskminehinne)
VALUES ('Sereda', 'Ivan', 4.2),
       ('Holovanov', 'Ivan', 4.2),
       ('Suvorov', 'Marko', 5.0);



## ALTER TABLE 
```
-tabeli struktuuri muutmine (struktuur: veerudenimed, andmetuubid, piirangud)
1. uue veeru lisamine
 --uue veeru lisamine
	ALTER TABLE opilane ADD isikukood varchar(11);

	--veeru kustutamine
	ALTER TABLE opilane DROP COLUMN isikukood;

	--andmetuubi muutmine varchar(11)-->char(11)
	ALTER TABLE opilane ALTER COLUMN isikukood char(11);

	ALTER TABLE opilane DROP COLUMN isikukoodd;

	--Sissdehitatud protseduur -mis naftab tabeli-Struktuur
    Sp_help opilane;

   --piirangute lisamine
	CREATE TABLE ryhm(
	ryhmId int,
	ryhmNimi char(10)
	);
	drop table ryhm;

	EXEC Sp_help ryhm;
	 
	--PK lisamine
	ALTER TABLE ryhm ADD CONSTRAINT pk_ryhm PRIMARY KEY (ryhmId);
    --UNIQUE lisamine 
	ALTER TABLE ryhm ADD CONSTRAINT un_ryhm UNIQUE (ryhmNimi);

	--kontollimiseks taidame tabelit ryhm
	SELECT * FROM ryhm;
	INSERT INTO ryhm (ryhmId,ryhmNimi)
	VALUES (2, 'TITpe24')

    --kontollimiseks taidame tabelit ryhm
	SELECT * FROM ryhm;
	INSERT INTO ryhm (ryhmId,ryhmNimi)
	VALUES (1, 'TITpv24')

	--lisame foreing key - voorvoti-valisvoti 
	ALTER TABLE opilane ADD ryhmId int;
	SELECT * FROM opilane;
	SELECT * FROM ryhm;
	ALTER TABLE opilane ADD CONSTRAINT fk_ryhm 
	FOREIGN KEY (ryhmId) REFERENCES ryhm(ryhmId);

	--kontrollimiseks- taidame tabeli opilane
	INSERT INTO opilane
	VALUES ('Leena','Jegorova', '2002-12-10',1,'+3727473','Tallinn', 4.5, '28490203', 1);
```

   
