# Andmebaasid
# Andmebaasid
andmebaasidega seotud SQL kood ja konspektid

## Põhimõisted

- andmebaas - struktureeritud andmete kogum
- tabel - olem - сущность - entity
- veerg - väli - поле*столбец
- rida - kirje - запись
- andmebaasi haldussüsteem - tarkvara, millega abil saab luua andmebaas: mariaDB / XAMPP, SQL SERVER management Studio
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

...

- Andmete sisetamine tabelisse
...
