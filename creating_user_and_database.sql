#creating user and database for storing gathered data
create database lotto;
create user 'piotrsoczewka'@'localhost' identified by 'qwerty';
grant all privileges on lotto.* to 'piotrsoczewka'@'localhost';
use lotto;
show tables;
select * from polish_cities;
select * from polish_provinces;