create database homework;

create table ORDERS (
                        id serial primary key,
                        date date,
                        customer_id int,
                        product_name varchar(25),
                        amount int check (amount > 0),
                        FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

insert into ORDERS (date, customer_id, product_name, amount)
values ('01.01.2023', '1', 'Milk', '88');
insert into ORDERS (date, customer_id, product_name, amount)
values ('02.01.2023', '2', 'Cheese', '360');
insert into ORDERS (date, customer_id, product_name, amount)
values ('04.01.2023', '3', 'Bread', '56');
insert into ORDERS (date, customer_id, product_name, amount)
values ('07.01.2023', '4', 'Water', '45');
insert into ORDERS (date, customer_id, product_name, amount)
values ('13.01.2023', '5', 'Chocolate', '180');
insert into ORDERS (date, customer_id, product_name, amount)
values ('20.01.2023', '6', 'Tea', '133');

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