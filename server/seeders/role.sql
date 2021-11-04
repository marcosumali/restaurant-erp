create table role (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
  UNIQUE(name)
);

insert into role (name) values ('Owner');
insert into role (name) values ('Manager');
insert into role (name) values ('Cashier');
insert into role (name) values ('Waiter');
insert into role (name) values ('Kitchen');
insert into role (name) values ('Purchasing');
