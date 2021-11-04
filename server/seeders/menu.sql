create table menu (
	id UUID NOT NULL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(255),
	price NUMERIC(19, 0) NOT NULL CHECK (price > 0),
	restaurantId UUID NOT NULL REFERENCES restaurant(id)
);

insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Mix Carpacio', null, '75000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Wakame Salad', null, '18000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Salmon Salad', null, '22000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Sushi Sakura', null, '125000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Sashimi Kai', null, '115000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Sashimi Moriawase', null, '250000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Cawan Mushi', null, '35000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Kani Mayo', null, '25000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Chuka Wakame', null, '25000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Edamame', null, '20000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Ootoro Sushi', null, '200000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Chutoro Sushi', null, '100000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Maguro Sushi', null, '125000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Salmon Sushi', null, '25000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Salmon Belly Sushi', null, '45000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Chicken Teriyaki', null, '75000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Niku Udon', null, '85000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Shoyu Ramen', null, '72000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Tare Ramen', null, '92000', '86157952-a57f-4015-877d-47246a3050dd');
insert into menu (id, name, description, price, restaurantId) values (uuid_generate_v4(), 'Ocha', null, '15000', '86157952-a57f-4015-877d-47246a3050dd');
