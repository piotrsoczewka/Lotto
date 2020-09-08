#creating user and database for storing gathered data
create database lotto;
create user 'piotrsoczewka'@'localhost' identified by 'qwerty';
grant all privileges on lotto.* to 'piotrsoczewka'@'localhost';