create table payment (
	id UUID NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	category VARCHAR(100)
);

insert into payment (id, name, category) values (uuid_generate_v4(), 'Cash', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Bank Transfer', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Credit Card', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Debit Card', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Gopay', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'OVO', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'ShopeePay', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Dana', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'LinkAja', null);
insert into payment (id, name, category) values (uuid_generate_v4(), 'Kredivo', null);
