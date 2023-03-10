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