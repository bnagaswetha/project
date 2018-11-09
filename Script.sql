create table hotel(hotel_id number primary key, city varchar(10), hotel_name varchar(20),
address varchar(25), description varchar(50), avg_rate_per_night number(10,2), phone_no1 varchar(10),
phone_no2 varchar(10), rating varchar(4), email varchar(15), fax varchar(15)); 

create table RoomDetails(hotel_id number references hotel(hotel_id),room_id int primary key,
room_no varchar(3), room_type varchar(15),
per_night_rate number(6,2), availability varchar(15));






 create sequence seq_room_id
 minvalue 50
 maxvalue 999999999999
 start with 50
 increment by 1
 cache 20;

create sequence seq_room_id

 start with 50
 increment by 1
;


//bookingdetails
create table booking_details(
booking_id int primary key,
room_id int,
user_id int,
booked_from date,
booked_to date,
no_of_adults int,
no_of_children int,
amount numeric(6,2),
FOREIGN KEY (room_id) REFERENCES roomdetails(room_id) ON DELETE CASCADE , 
FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE 
);



create sequence booking_seq_id
start with 1000
increment by 1;


