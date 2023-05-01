--1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);
--2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday) values ('Faye', '2016-02-22');
insert into employee (name, birthday) values ('Moses', '1959-06-25');
insert into employee (name, birthday) values ('Honor', '1994-03-18');
insert into employee (name, birthday) values ('Burgess', '1941-02-01');
insert into employee (name, birthday) values ('Maggi', '2021-12-01');
insert into employee (name, birthday) values ('Madel', '2006-09-07');
insert into employee (name, birthday) values ('Tabby', '1989-05-10');
insert into employee (name, birthday) values ('Carmelita', '1980-12-15');
insert into employee (name, birthday) values ('Blayne', '1953-02-02');
insert into employee (name, birthday) values ('Pryce', '1945-09-16');
insert into employee (name, birthday) values ('Pat', '1944-08-17');
insert into employee (name, birthday) values ('Cyril', '2009-03-29');
insert into employee (name, birthday) values ('Marthe', '2001-06-02');
insert into employee (name, birthday) values ('Karly', '1967-09-13');
insert into employee (name, birthday) values ('Tuesday', '2023-02-10');
insert into employee (name, birthday) values ('Drona', '1957-02-10');
insert into employee (name, birthday) values ('Eleanora', '1977-06-01');
insert into employee (name, birthday) values ('Bobbie', '1959-01-29');
insert into employee (name, birthday) values ('Shina', '1969-03-24');
insert into employee (name, birthday) values ('Kriste', '1980-09-03');
insert into employee (name, birthday) values ('Mariele', '2000-07-29');
insert into employee (name, birthday) values ('Elston', '1939-10-08');
insert into employee (name, birthday) values ('Lanae', '1952-12-03');
insert into employee (name, birthday) values ('Shirl', '2022-02-20');
insert into employee (name, birthday) values ('Jewel', '2022-11-16');
insert into employee (name, birthday) values ('Jessie', '1939-09-16');
insert into employee (name, birthday) values ('Arlene', '2006-08-06');
insert into employee (name, birthday) values ('Joseito', '1933-09-19');
insert into employee (name, birthday) values ('Pauly', '1981-01-31');
insert into employee (name, birthday) values ('Rodie', '1977-07-31');
insert into employee (name, birthday) values ('Piotr', '1990-10-15');
insert into employee (name, birthday) values ('Graham', '2009-05-10');
insert into employee (name, birthday) values ('Gib', '1947-05-19');
insert into employee (name, birthday) values ('Aurelea', '1988-06-20');
insert into employee (name, birthday) values ('Monro', '1941-12-02');
insert into employee (name, birthday) values ('Anthiathia', '2022-06-12');
insert into employee (name, birthday) values ('Claudine', '1988-07-14');
insert into employee (name, birthday) values ('Claybourne', '1949-12-20');
insert into employee (name, birthday) values ('Kerstin', '1991-03-03');
insert into employee (name, birthday) values ('Betsey', '2004-02-23');
insert into employee (name, birthday) values ('Amelie', '2002-08-27');
insert into employee (name, birthday) values ('Harriott', '2014-05-16');
insert into employee (name, birthday) values ('Kermy', '1979-05-12');
insert into employee (name, birthday) values ('Neill', '2018-11-28');
insert into employee (name, birthday) values ('Thelma', '2019-07-19');
insert into employee (name, birthday) values ('Wendy', '2017-06-14');
insert into employee (name, birthday) values ('Arlen', '1973-07-22');
insert into employee (name, birthday) values ('Hussein', '1930-06-23');
insert into employee (name, birthday) values ('Filberto', '1992-04-12');
insert into employee (name, birthday) values ('Rourke', '1948-03-31');

--3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name = 'Orhan'
WHERE id = 7;

UPDATE employee
SET birthday = '2016-02-22'
WHERE name LIKE 'F%';

UPDATE employee
SET email = 'abc@gmail.com'
WHERE id > 10;

UPDATE employee
SET name = 'UPDATE'
WHERE id < 11
RETURNING *;

UPDATE employee
SET birthday = '1994-05-23'
WHERE name LIKE 'A%';

--4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 15
RETURNING *;

DELETE FROM employee
WHERE name ILIKE 'Cyril'
RETURNING *;

DELETE FROM employee
WHERE birthday = '2001-06-02'
RETURNING *;

DELETE FROM employee
WHERE name ILIKE 'D____'
RETURNING *;

DELETE FROM employee
WHERE id > 45
RETURNING *;
