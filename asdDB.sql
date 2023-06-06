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

