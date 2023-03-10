create database homework;

create table CUSTOMERS (
    id serial primary key,
    name varchar(25) not null,
    surname varchar(25) not null,
    age smallint check (age > 0 and age < 100),
    phone_number varchar(12) unique
);

insert into CUSTOMERS (name, surname, age, phone_number)
values ('Maria', 'Muhina', '23', '8-8005553535');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Smirnov', '40', '8-8005557090');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Yuriy', 'Ivanov', '31', '8-8007776666');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alexandra', 'Petrova', '28', '8-8008889900');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Sidorov', '55', '8-8004440011');
insert into CUSTOMERS (name, surname, age, phone_number)
values ('Irina', 'Komarova', '35', '8-8001113335');