create table bill (
	id UUID NOT NULL PRIMARY KEY,
	customerId UUID REFERENCES customer(id),
	restaurantId UUID NOT NULL REFERENCES restaurant(id),
	restaurantPaymentId UUID NOT NULL REFERENCES restaurant_payment(id)
);

insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '88562131-8a77-47ff-a908-424516a89e36', '86157952-a57f-4015-877d-47246a3050dd', '5b71b813-bd6d-4215-8a8a-66be623d5802');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'eaa6f8ba-e063-4dc4-a3eb-055bf6695fd4', '86157952-a57f-4015-877d-47246a3050dd', 'ccab2f14-7018-437e-9386-1fa7541dd743');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'df18c2e7-6a71-408a-a76f-8d3ee19d40a9', '86157952-a57f-4015-877d-47246a3050dd', '5b71b813-bd6d-4215-8a8a-66be623d5802');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '73bde10a-d82a-4a4d-ac59-944f0a653c09', '86157952-a57f-4015-877d-47246a3050dd', '7127192f-543e-4ff1-9bd3-94f280e8a4a6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '727b0fe0-f752-4450-9c89-f3349a7b65cd', '86157952-a57f-4015-877d-47246a3050dd', 'ccab2f14-7018-437e-9386-1fa7541dd743');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '512320f2-11fb-4d86-8bfb-4cecd336597a', '86157952-a57f-4015-877d-47246a3050dd', '7127192f-543e-4ff1-9bd3-94f280e8a4a6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'c892c60e-e76d-46a0-9b8a-ff4eef17fea6', '86157952-a57f-4015-877d-47246a3050dd', 'e6eabe42-9034-4622-99d9-ecd2f9e686f6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'cedebfc2-fdb2-43de-9c12-801c4c9837f8', '86157952-a57f-4015-877d-47246a3050dd', '19c7ae76-9f68-4ca1-a15d-54544ec95ba6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '19d388fb-9a6f-40f4-af28-3e12572f761f', '86157952-a57f-4015-877d-47246a3050dd', '19c7ae76-9f68-4ca1-a15d-54544ec95ba6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '97eb718f-c6a7-4587-9b78-9f6352ec46e3', '86157952-a57f-4015-877d-47246a3050dd', 'bdbf2eed-c146-43df-8325-909f523df5a0');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'b0bdc9dc-6ff9-463f-89b8-46ec3c2e2101', '86157952-a57f-4015-877d-47246a3050dd', 'e6eabe42-9034-4622-99d9-ecd2f9e686f6');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '252d5bb5-245b-4a74-8e32-fbbdfb19a138', '86157952-a57f-4015-877d-47246a3050dd', '746dbce3-c3a0-44f0-ab31-313784a7f2f8');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'b56d82a4-6716-4b52-8e23-6093e90e64dd', '86157952-a57f-4015-877d-47246a3050dd', 'bdbf2eed-c146-43df-8325-909f523df5a0');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '803566a7-69c8-423a-9d0d-cf488cef2704', '86157952-a57f-4015-877d-47246a3050dd', '746dbce3-c3a0-44f0-ab31-313784a7f2f8');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '3132805b-a354-4100-a15f-260cd2e84de5', '86157952-a57f-4015-877d-47246a3050dd', 'c4fc8376-fd98-4528-8f7b-c0c870867b39');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '9450f7e5-c8cf-4737-bf89-064129d5c6e2', '86157952-a57f-4015-877d-47246a3050dd', 'b003fa8c-5e6c-4812-aedb-29e18a4f88c9');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '6f132a2e-6224-4260-bc9e-7b6b14b4276a', '86157952-a57f-4015-877d-47246a3050dd', 'b003fa8c-5e6c-4812-aedb-29e18a4f88c9');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '7e59c930-bf45-4473-ae7a-3433236211ba', '86157952-a57f-4015-877d-47246a3050dd', 'b36d8052-6308-42d4-9c12-7ffde06e8195');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), '6a0991ef-cce8-4444-b7a2-eee475173575', '86157952-a57f-4015-877d-47246a3050dd', 'c4fc8376-fd98-4528-8f7b-c0c870867b39');
insert into bill (id, customerId, restaurantId, restaurantPaymentId) values (uuid_generate_v4(), 'a5de5d6f-c1bc-47bb-a4b3-073f3c2d35cf', '86157952-a57f-4015-877d-47246a3050dd', 'b36d8052-6308-42d4-9c12-7ffde06e8195');
