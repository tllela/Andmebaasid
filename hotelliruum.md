## Andnebass Hotelliruumi reserveerimine
```
CREATE TABLE guest(
    guestID int PRIMARY KEY IDENTITY(1,1),
    firstname varchar(80),
    lastname varchar(80) NOT NULL,
    memberSince DATE
);

SELECT * FROM guest;

INSERT INTO guest (firstname, lastname, memberSince)
VALUES ('vasilisa', 'vasilenko', '2025-08-23');
```

<img width="316" height="119" alt="{607B09F7-D9E2-40F8-9020-A257AEA1771D}" src="https://github.com/user-attachments/assets/bec27db8-e79d-4e1e-999c-fe57db7ff6be" />
