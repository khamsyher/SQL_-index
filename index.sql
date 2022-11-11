use Store

CREATE TABLE production.parts(
    part_id   INT NOT NULL, 
    part_name VARCHAR(100)
);

INSERT INTO 
    production.parts(part_id, part_name)
VALUES
    (1,'Frame'),
    (2,'Head Tube'),
    (3,'Handlebar Grip'),
    (4,'Shock Absorber'),
    (5,'Fork');
	

select part_id, part_name from production.parts where part_name='Fork'

ALTER TABLE production.parts
ADD PRIMARY KEY(part_id);

select part_id, part_name from production.parts where  part_id = 5

CREATE TABLE production.part_prices(
    part_id int,
    valid_from date,
    price decimal(18,4) not null,
    PRIMARY KEY(part_id, valid_from) 

);

select customer_id,city from sales.customers where city = 'Atwater'


CREATE UNIQUE INDEX index_name ON table_name(column_list);


SELECT customer_id,  email FROM sales.customers WHERE email = 'caren.stephens@msn.com';


CREATE UNIQUE INDEX ix_cust_email ON sales.customers(email);


SELECT email,  COUNT(email)FROM sales.customers GROUP BY email HAVING COUNT(email) > 1;
