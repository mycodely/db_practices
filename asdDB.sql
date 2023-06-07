use holuberna;
SET SQL_SAFE_UPDATES = 0;

UPDATE animales SET estado = 'feliz';
SELECT * FROM animales;

DELETE from animales where estado = 'feliz';

INSERT INTO animales (culpaDeBerna, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (culpaDeBerna, estado) VALUES ('dragon', 'angry');
INSERT INTO animales (culpaDeBerna, estado) VALUES ('turtle', 'sad');
INSERT INTO animales (culpaDeBerna, estado) VALUES ('felipe', 'sad');

SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'felipe';
UPDATE animales set sexo = 'F' where id = 10;
UPDATE animales set nombre = 'Alejandro' where id = 10;

ALTER TABLE animales CHANGE tipo especie VARCHAR(40);
ALTER TABLE animales RENAME COLUMN especie TO culpaDeBerna;
 

delete from animales where estado = 'feliz';
ALTER TABLE animales ADD edad INT;
ALTER TABLE animales ADD sexo varchar(1);
ALTER TABLE animales ADD nombre varchar(20);

CREATE table user(
id int not null auto_increment,
name varchar(50) not null,
edad int not null,
email varchar(50) not null,
primary key (id)
);


insert into user (name, edad, email) values ('Osacar', 25, 'oscard@gmail.com');
insert into user (name, edad, email) values ('Lenia', 15, 'linea@gmail.com');
insert into user (name, edad, email) values ('Nicolas', 35, 'niconicolas@gmail.com');
insert into user (name, edad, email) values ('Gimena', 45, 'gimenas@gmail.com');

-- delete from user;
SELECT * FROM user;
SELECT * FROM user limit 2;
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad > 30 and email = 'niconicolas@gmail.com';
select * from user where edad >= 36 or email = 'linea@gmail.com';
select * from user where edad between 15 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail';
select * from user where email like 'oscar%';

select * from user order by edad asc;
select * from user order by edad desc;
select min(edad) as minimo from user;
