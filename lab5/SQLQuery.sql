use PHARMACY

select * into table1 from worker where birth>'1977-01-01';

select * into table2 from worker where id_position=1;

select * from table1 union select * from table2;

select * from  table1 where id_worker in (select id_worker from table2);

select * from table1 where id_worker not in (select id_worker from table2);

select * from table1, table2;
