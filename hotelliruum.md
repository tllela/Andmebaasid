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

--3. room_type
```
CREATE TABLE room_type(
room_type_id int primary key identity(1,1),
descriprion varchar(80),
max_capacity int 
);

SELECT * FROM room_type;

INSERT INTO room_type
VALUES ('standart', 1);
```
<img width="335" height="98" alt="{022910A9-3532-4514-A7B3-6B6D95ACC42F}" src="https://github.com/user-attachments/assets/08d667e0-3c34-414b-9003-cfd8fee61695" />

--4. room

```
CREATE TABLE room(
room_id int primary key identity(1,1),
number varchar(80),
name varchar(40),
status varchar(10),
smoke bit,
room_type_id int,
foreign key (room_type_id) references room_type(room_type_id)
);

SELECT * FROM room;

INSERT INTO room
VALUES ('A101', 'class', 'vaba', 1,1);
```
<img width="384" height="110" alt="{672BEC6E-F8AE-4274-A8FA-17E9DBFF26D9}" src="https://github.com/user-attachments/assets/b149907e-da32-4577-a9be-b74f8d9a7602" />

--5. reserved_room
```
CREATE TABLE reserved_room(
reserved_roomID int primary key identity(1,1),
number_of_rooms int,
room_type_id int,
reservationID int,
foreign key (room_type_id) references room_type(room_type_id),
foreign key (reservationID) references reservation(reservationID),
status varchar(20)
);

INSERT INTO reserved_room
VALUES (3, 1, 2,'ready');

SELECT * FROM reserved_room;
```
<img width="481" height="123" alt="{9D5498CA-B7D7-4331-8FB5-820B77C4F474}" src="https://github.com/user-attachments/assets/1fbe5b65-899a-4de7-9b68-9c21ffc90937" />

