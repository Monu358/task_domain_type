create type order_status as enum ('pending', 'shipped', 'delivered', 'canceled');

create table orders (
    id serial primary key,
    status order_status not null
)

insert into orders( id,status)
 values (11, 'pending'),
        (12, 'shipped'),
        (13, 'delivered'),
	    (14, 'canceled')
select * from orders

create view order_details as
select id,status from orders
where status in ('shipped', 'delivered');
select * from order_details

update orders set status = 'shipped ' WHERE id = 12;
select * from orders

select * from orders where status = 'canceled';

create table orders1 (
    id serial primary key,
    status TEXT not null check (status IN ('pending', 'shipped', 'delivered', 'canceled'))
);






