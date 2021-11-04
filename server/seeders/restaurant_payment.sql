create table restaurant_payment (
	id UUID NOT NULL PRIMARY KEY,
	restaurantId UUID NOT NULL REFERENCES restaurant(id),
	paymentId UUID NOT NULL REFERENCES payment(id)
);

insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', 'a201888e-70ca-4230-b68c-f33e621c7dbc');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '8cee85b7-1fbc-400c-9e8f-6a00dd098d27');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '1b3a2484-13dd-40bc-900f-83e9620097a1');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '8eee6ea8-dc54-46d8-898f-e4afcb74a09a');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '2224e772-c3cd-46d4-9301-7e9302240219');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '0abab1e2-d006-4931-8d46-53881361070c');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', 'b400ae39-dd44-4bc8-a2a7-d318f2bde684');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', 'a0bf0a60-0cfe-4acd-bcb1-18363102f59b');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '56277c8a-9cb1-45fa-9119-49a790337fe2');
insert into restaurant_payment (id, restaurantId, paymentId) values (uuid_generate_v4(), '86157952-a57f-4015-877d-47246a3050dd', '7f37f624-a674-4a93-bca1-28d627d0b45e');
