CREATE TABLE IF NOT EXISTS ww_members(
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(20),
	phone VARCHAR(20),
	email VARCHAR(20),
	PRIMARY KEY (id)
);

select * from ww_members;

drop table ww_members;

show tables;

select * from product;

delete from product where p_id = 'P123123';

update product
set p_unitPrice = 36900
where p_id = 'L2';
