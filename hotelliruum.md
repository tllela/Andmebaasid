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

--2. reservation 

```
CREATE TABLE reservation(
    reservationID int PRIMARY KEY identity(1,1),
    date_in DATE,
    date_out DATE,
    made_by varchar(20),
    guestID int,
    FOREIGN KEY (guestID) REFERENCES guest(guestID)
);

SELECT * FROM reservation;

INSERT INTO reservation
VALUES ('2025-09-01', '2025-10-30', 'quest', 3);
```

<img width="428" height="136" alt="{527C7F14-4385-4B0F-9275-68740F701AE9}" src="https://github.com/user-attachments/assets/3a71ba89-e132-4ed8-b796-6c6f23b391ad" />
