-- Created customer table 
create table customer_captain (
	customer_id SERIAL primary key,
	first_name VARCHAR (100),
	last_name VARCHAR (100),
	address VARCHAR (150),
	billing_info VARCHAR (150)
);
-- Movie table
create table movie_captain(
	movie_id SERIAL primary key,
	theater_id integer not null
);
-- Ticket table
create table ticket_captain(
	ticket_id SERIAL primary key,
	sub_total numeric(8,2),
	total_cost numeric (10,2),
	customer_id integer not null,
	movie_id integer not null,
	foreign key (customer_id) references customer_captain (customer_id),
	foreign key (movie_id) references movie_captain(movie_id)
);
create table inventory_captain(
	upc SERIAL primary key,
	product_amount integer not null
);
-- Concessions table 
create table concessions_captain(
	concessions_id SERIAL primary key,
	upc integer not null,
	foreign key (upc) references inventory_captain(upc)
);


-- Insert portion of customer_captain table 

insert into customer_captain( 
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)values(
	'1',
	'John',
	'Doe',
	'100 Elk Street Bear, Wisconsin 00000',
	'1111-1111-1111-1111 120 01/01'
);

-- Insert portion of movie_captain
insert into movie_captain(
	movie_id,
	theater_id
)values(
	'000 ',
	'4'
);

-- Insert portion of ticket_captain
insert into ticket_captain(
	ticket_id, 
	sub_total,
	total_cost,
	customer_id,
	movie_id
)values(
	'1',
	'20.99',
	'32.12',
	'1',
	'000'
);

-- Insert portion of Inventory_captain 
insert into inventory_captain(
	upc,
	product_amount
)values(
	'2525',
	'15'
);

-- Insert portion of Concessions_captain
insert into concessions_captain(
	upc,
	concessions_id
)values(
	'2525',
	'3'
)
---------------------------------------------------------------------------
alter table movie_captain
add Movie_name VARCHAR(100)

select * 
from movie_captain










