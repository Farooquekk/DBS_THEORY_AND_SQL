GRANT SELECT on football_league.* TO 'user1'@'localhost';
select * from customers;

SHOW GRANTS FOR 'root'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;

create user  'Client'@'%' IDENTIFIED BY '123';

grant create , select on classicmodels.* to  'Farooque Sajjad'@'%' ;

GRANT SELECT, INSERT, UPDATE, DELETE ON classicmodels.* TO 'Client'@'%';

revoke SELECT, INSERT, UPDATE, DELETE ON classicmodels.* from 'Client'@'%';

grant all privileges on  classicmodels.* to 'Client'@'%';

-- REVOKE ALL PRIVILEGES ON classicmodels.* FROM 'Client'@'%';
