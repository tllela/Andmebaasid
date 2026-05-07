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
