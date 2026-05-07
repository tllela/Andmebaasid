## SQL Protseduurid
 * stored procedure — salvestatud protseduurid — хранимые процедуры
 * sama nagu funktsioonid programmeerimises — mingi tegevused mis käivitakse automaatselt protseduuri kasutamisel 
```

-- ab hotell
CREATE TABLE guestt(
guestID int Primary key identity(1,1),
firstname varchar(80),
lastname varchar(80) not null,
memberSince DATE);

SELECT * FROM guestt;

INSERT INTO guestt
VALUES ('leyla', 'talibova', '2026-05-20');
```
<img width="308" height="100" alt="{F7DE3F8B-6B29-4E75-8FDC-DD41BF54E381}" src="https://github.com/user-attachments/assets/99564091-1d6c-40fd-9135-9ce68fdb59c2" />

```
-- protseduur, mis lisab uus guest ja kuvab tabeli
CREATE PROCEDURE lisaGuestt
--@parameetrid
@ussNimi varchar(25),
@uusPerenimi varchar(30),
@kuupaev date
AS
BEGIN

--protseduuri
INSERT INTO guestt(firstname, lastname, memberSince)
VALUES (@ussNimi, @uusPerenimi, @kuupaev);
SELECT * FROM guestt;
END
--kutse
EXEC lisaGuest 'tanya', 'Kopli', '2026-06-07'
```
<img width="388" height="96" alt="{526108D0-E784-4CAD-96D9-BA05F5F3E0F4}" src="https://github.com/user-attachments/assets/3e51cf4d-f071-40d2-98de-819ba36a6028" />

```
--protseduur, mis kustutab guest id järgi
CREATE PROCEDURE kustutaGuestt
@kustutaId int
AS
BEGIN
SELECT * FROM guestt;
DELETE FROM guestt WHERE guestID=@kustutaId;
SELECT * FROM guestt;
END
--kutse
EXEC kustutaGuestt 1;
```
<img width="366" height="323" alt="{13CF8603-4A51-42EF-BC64-3E6C4214994C}" src="https://github.com/user-attachments/assets/0ee23020-29ef-4aec-902d-a4b938cd1db5" />

