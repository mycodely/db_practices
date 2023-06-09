create table products (
id int not null auto_increment, 
name varchar(50) not null,
created_by int not null,
marca varchar(50)not null,
primary key(id),
foreign key(created_by) references user(id)
);

rename table products to product;

insert into product(name, created_by, marca)
values
	('ipad', 7,'apple'),
    ('iphone',7,'apple'),
    ('xiaomi12',8,'xiaomi'),
    ('watch',8,'apple'),
    ('imac',8,'apple'),
    ('macbook',7,'apple'),
    ('kindle',9,'amazon'),
    ('ipad mini',9,'apple');
    
    select * from product;
    select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;
    
	select u.id, u.email, p.name from user u right join product p on u.id = p.created_by; -- no muestra users null porque llega desde la tabla right
    
    select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by; -- no muestra users null porque llega desde la tabla right
    
    select u.id, u.name, p.name from user u cross join product p;
    
    select count(id), marca from product group by marca;
    
    select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;
    
select COUNT(p.id), u.name
from product p
left join user u on u.id = p.created_by
group by p.created_by
having COUNT(p.id) >= 3;

drop table product;
drop table animales;
drop table user;
