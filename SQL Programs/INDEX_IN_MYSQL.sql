-- index  (btree data structure)
-- indexex are used to find values within a specific column more quickely 
-- mysql normally searches sequentially through a column
-- the longer the column, the more expensive the operation is
-- update takes more time, select takes less time

use classicmodels;

show indexes from customers; 

create index name_index on customers(customerName);  

select * from customers where customerName like 'A%'; 
-- multi_column index --> in mysql there is left most prefix with indexes   
create index address_1_2_index on customers (addressLine1,addressLine2);

-- it's working
drop index address_1_2_index on customers; 
-- using alter with drop is also working for dropping index
alter table customers drop index address_1_2_index ;