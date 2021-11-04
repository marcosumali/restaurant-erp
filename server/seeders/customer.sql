create table customer (
	id UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50),
	gender VARCHAR(7) CHECK (gender IN ('Male', 'Female', null)),
	date_of_birth DATE,
	phone VARCHAR(20),
	email VARCHAR(100),
  UNIQUE(email)
);

insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Charmaine', 'Corke', null, '2009-03-11', '+385-205-539-0262', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Dee dee', 'Tadgell', null, null, '+420-650-469-0816', 'dtadgell1@livejournal.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Gladys', 'Wherrit', null, null, null, 'gwherrit2@bizjournals.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Audrey', 'Guidini', null, null, '+86-225-975-9941', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Mahmud', 'McFall', 'Male', null, '+52-927-517-8837', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Jammal', 'Sarney', 'Female', null, '+63-592-535-2699', 'jsarney5@epa.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Gasparo', 'Pow', 'Female', null, '+992-595-795-2533', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Major', 'Chong', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Hinze', 'Martell', null, '2012-02-19', '+55-638-927-8005', 'hmartell8@jimdo.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Cordie', 'Maskell', null, null, '+62-542-878-2853', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Vergil', 'Simkovich', 'Female', null, '+359-393-364-3732', 'vsimkovicha@facebook.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Agatha', 'Andersson', null, null, '+1-924-401-0066', 'aanderssonb@nih.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Judie', 'Stiggles', 'Male', null, '+86-411-469-4823', 'jstigglesc@shop-pro.jp');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Parker', 'Sibary', 'Female', null, '+30-867-580-8681', 'psibaryd@wp.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Pauli', 'Piers', null, '2012-10-14', '+261-661-754-9275', 'ppierse@thetimes.co.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ilaire', 'Hawkyens', null, null, '+380-392-953-3392', 'ihawkyensf@hostgator.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Joella', null, null, null, '+1-763-516-8135', 'jamorineg@blogspot.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Thia', 'Burkinshaw', 'Female', null, null, 'tburkinshawh@w3.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Wanda', 'Harroll', 'Male', null, '+63-200-494-4208', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Sybyl', 'Beaconsall', null, null, null, 'sbeaconsallj@squidoo.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Reynolds', null, 'Male', null, '+66-584-176-0791', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Keenan', 'Edelheit', 'Male', null, '+47-569-510-3564', 'kedelheitl@mozilla.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Friedrich', 'Deas', 'Female', null, '+355-981-296-1001', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Dana', 'Ship', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Elladine', 'Philippon', 'Female', null, '+420-427-317-9728', 'ephilippono@google.cn');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Genny', 'De Gouy', null, null, null, 'gdegouyp@newsvine.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kris', 'Cardinale', null, null, null, 'kcardinaleq@walmart.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Christabel', 'Westphal', null, null, null, 'cwestphalr@typepad.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Avrom', 'Scullin', null, null, '+373-797-885-8539', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Aurora', 'Janaszewski', null, null, '+250-628-362-8916', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Inigo', 'Kennan', null, null, '+63-193-503-9541', 'ikennanu@google.pl');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Trstram', null, null, null, null, 'tpalingv@skype.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Clarisse', 'Habbergham', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ber', 'Roust', null, null, '+86-846-910-2980', 'broustx@umich.edu');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Natalya', 'Walker', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ianthe', 'Sage', null, null, '+62-587-432-8168', 'isagez@eventbrite.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lorri', 'Sealand', 'Male', null, '+1-677-380-1685', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Reece', 'Seacroft', null, null, '+62-325-465-4421', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Carlotta', 'Sekulla', 'Male', '2012-03-01', '+62-274-948-0557', 'csekulla12@lulu.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Darius', 'Mc-Kerley', null, null, '+967-726-135-7866', 'dmckerley13@pinterest.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Trista', null, null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Janek', null, null, null, '+66-535-286-5877', 'jbambra15@liveinternet.ru');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Miof mela', 'Lettson', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Allard', 'Robinett', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lora', 'Renfield', null, null, null, 'lrenfield18@discovery.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Angelle', 'Lote', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ansell', 'Waszkiewicz', 'Female', null, null, 'awaszkiewicz1a@drupal.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lona', 'Van Waadenburg', 'Male', null, '+62-538-457-6985', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Cally', null, null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tiffie', 'Thickpenny', 'Male', null, '+963-870-865-4906', 'tthickpenny1d@last.fm');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Annabelle', 'Ioselevich', null, '2015-01-23', '+64-894-690-4187', 'aioselevich1e@disqus.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Wolfy', 'Atlay', null, null, '+55-284-893-3953', 'watlay1f@wired.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Alice', null, 'Male', null, '+86-870-160-6694', 'akorn1g@webnode.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Elsworth', null, null, null, '+86-242-387-4641', 'ehallatt1h@ebay.co.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kaylee', 'Pitkeathly', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Emmy', 'Ansett', null, null, '+62-133-512-7167', 'eansett1j@vinaora.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Axel', null, null, '2009-07-11', null, 'athompson1k@deviantart.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Eba', null, null, null, '+506-821-278-4563', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Batsheva', 'Drable', 'Female', null, '+961-923-220-6138', 'bdrable1m@wisc.edu');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Vida', 'Downes', 'Female', null, '+62-992-964-0876', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Diena', 'Wilkison', null, null, '+30-856-773-9781', 'dwilkison1o@ox.ac.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Cody', 'Troup', 'Female', null, '+46-197-762-0310', 'ctroup1p@weibo.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Rhetta', 'Paffett', 'Male', null, '+975-182-126-0507', 'rpaffett1q@google.co.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Rafferty', 'Wareham', null, null, '+31-107-584-1640', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Elsi', 'Mouan', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Iolande', 'Bosward', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lila', 'Arkle', 'Female', null, '+351-536-767-8262', 'larkle1u@usgs.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Harrietta', 'Oliva', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Joyce', 'Limprecht', null, null, null, 'jlimprecht1w@is.gd');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Farly', 'Wederell', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Reggi', 'Lilie', 'Female', null, '+62-417-127-5112', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lauryn', 'Benaine', 'Male', null, '+57-326-818-4670', 'lbenaine1z@miibeian.gov.cn');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Geri', null, null, null, '+385-860-252-8743', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Annamaria', 'Saterthwait', null, '2011-07-20', '+86-216-209-4242', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Jerad', 'Shaefer', null, null, '+63-948-709-8482', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Magdalena', 'Elmer', 'Female', null, '+62-647-441-7229', 'melmer23@telegraph.co.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Audra', 'Dufaur', null, null, '+62-183-416-2249', 'adufaur24@dagondesign.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Cletis', 'Ireson', null, null, '+351-349-843-3231', 'cireson25@hud.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Karlyn', 'Tolussi', null, null, '+975-688-671-9147', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lorenzo', 'Ollcott', null, null, '+7-130-226-5797', 'lollcott27@forbes.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Maxi', 'O'' Hanvey', null, null, '+63-828-929-0234', 'mohanvey28@bbb.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Carlie', 'Taggart', 'Male', null, null, 'ctaggart29@cnet.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Elijah', 'Vertigan', null, null, '+86-706-296-6089', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Yves', 'Matushevich', null, null, null, 'ymatushevich2b@ft.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Osbourne', 'Garred', 'Female', '2011-09-09', '+358-481-779-9549', 'ogarred2c@spotify.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Freddie', 'Schout', null, null, '+30-184-748-4018', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Willetta', 'de Tocqueville', 'Male', null, '+420-867-785-7903', 'wdetocqueville2e@cisco.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Isidore', 'Schule', null, null, '+880-969-891-8172', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Angelique', 'Eastridge', null, null, '+86-570-315-8745', 'aeastridge2g@photobucket.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Adler', 'Swadlin', null, null, '+48-925-449-1727', 'aswadlin2h@va.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Douglas', 'Sinnett', null, null, '+55-493-740-8769', 'dsinnett2i@plala.or.jp');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Melissa', 'Plaster', null, null, '+52-644-761-3074', 'mplaster2j@sina.com.cn');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Stearn', 'Franceschi', null, '2018-01-22', null, 'sfranceschi2k@cnbc.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Leoline', 'Ramey', 'Female', null, '+351-184-129-7901', 'lramey2l@washingtonpost.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Paxton', 'Jako', 'Male', null, '+1-512-151-5993', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Karalynn', 'Trowbridge', null, null, '+63-774-550-5941', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Uriel', 'Bradnum', null, null, '+63-692-167-3433', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Waite', 'Dayment', 'Male', null, '+507-347-469-3151', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Aleda', 'Dispencer', 'Female', null, '+33-822-457-4856', 'adispencer2q@drupal.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lorens', 'McCotter', 'Female', null, null, 'lmccotter2r@1und1.de');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Johnny', 'Canaan', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kayley', 'Cherrett', null, null, '+385-734-632-4656', 'kcherrett2t@acquirethisname.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tremain', 'Lowing', null, null, '+86-362-810-9120', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lynett', 'Gawthrope', null, null, '+62-360-890-7011', 'lgawthrope2v@google.com.au');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Scarlett', 'Georgeot', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Rosemary', 'Jiroutek', 'Male', null, '+20-412-788-9011', 'rjiroutek2x@harvard.edu');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kendrick', 'Berthot', 'Male', '2017-08-16', '+7-423-263-6690', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Shawn', 'Elderkin', 'Female', null, '+380-915-605-7335', 'selderkin2z@theglobeandmail.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Emera', 'Yakovlev', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Carilyn', 'Davidwitz', null, null, '+389-808-467-8807', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Wiatt', 'Olenichev', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Farrah', 'Sandyfirth', 'Male', null, null, 'fsandyfirth33@yellowpages.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Jeff', 'Bishop', null, null, '+86-474-725-5483', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Babbie', 'Poser', null, null, null, 'bposer35@vk.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ware', 'Jarnell', null, null, '+55-703-142-0745', 'wjarnell36@upenn.edu');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kyle', 'Timmes', null, null, '+86-472-557-9909', 'ktimmes37@taobao.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tucker', 'Whetnell', 'Male', '2006-01-28', '+261-945-338-3369', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Wood', 'Trethowan', null, null, '+351-209-263-2428', 'wtrethowan39@github.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Micheal', 'Leteurtre', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Zed', null, 'Female', null, '+237-515-818-0656', 'ztirone3b@senate.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ethelbert', 'Turbard', 'Female', null, '+62-802-370-6023', 'eturbard3c@reverbnation.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tadd', 'Whitmore', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ferdy', 'Greenlies', 'Female', null, '+86-609-523-8350', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Paola', 'Clubb', null, null, null, 'pclubb3f@chronoengine.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Haley', 'Ridsdell', null, null, '+351-280-705-1338', 'hridsdell3g@bizjournals.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lotte', 'Overal', 'Male', null, null, 'loveral3h@bravesites.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Felicio', 'Linton', null, null, '+354-178-977-4344', 'flinton3i@ca.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Kimbra', 'McKall', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Anet', 'Kairns', 'Female', null, '+86-947-319-8826', 'akairns3k@theglobeandmail.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Fitz', 'Gaber', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Humphrey', 'Rudsdale', 'Male', null, '+55-150-359-1339', 'hrudsdale3m@hugedomains.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Meg', 'Dobson', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Reagen', 'Paolo', 'Male', null, '+212-239-971-9900', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Rhys', 'Ludvigsen', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tana', 'Brabender', 'Male', null, '+55-623-510-4889', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Wandie', 'Laurance', 'Female', null, '+62-526-225-0281', 'wlaurance3r@google.co.jp');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Waneta', 'Coneau', null, null, '+387-248-353-5381', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Belle', 'Harrington', 'Female', null, '+213-434-391-2333', 'bharrington3t@slate.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Nichole', 'O''Hannigan', 'Male', null, '+86-978-755-0560', 'nohannigan3u@yellowpages.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Christin', 'Snazle', 'Male', null, '+86-387-730-3634', 'csnazle3v@nature.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Daven', 'Patzelt', null, null, '+86-770-345-4880', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Anna-maria', 'Eilhertsen', null, null, '+55-289-785-1622', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Byram', 'Sparrow', null, null, '+46-537-945-6189', 'bsparrow3y@drupal.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Tades', 'Wolfenden', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Crysta', 'Glancy', 'Female', '2007-10-11', '+505-879-352-3045', 'cglancy40@jimdo.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Fayre', 'Ticic', null, null, null, 'fticic41@webnode.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Annadiane', 'Prozescky', null, null, '+86-992-648-2327', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Krissy', 'Hyde-Chambers', 'Male', null, '+86-299-204-8896', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Mayne', 'Hackworthy', null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Basia', 'Kuzma', 'Female', null, '+33-535-969-4065', 'bkuzma45@google.com.au');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Siobhan', 'Puttergill', 'Male', null, '+353-385-479-0896', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Helaine', 'Morris', 'Female', null, null, 'hmorris47@shareasale.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Everard', 'Clausewitz', 'Female', null, '+358-550-677-8361', 'eclausewitz48@hugedomains.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Welsh', 'Montford', null, null, '+55-132-949-2709', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Coretta', 'Careswell', 'Female', null, '+55-913-310-9575', 'ccareswell4a@businesswire.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Vic', null, null, '2018-07-15', '+355-888-933-4042', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Keene', 'Halton', null, null, '+51-101-540-7879', 'khalton4c@google.com.br');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Heinrick', null, null, null, '+20-166-599-3155', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Darrelle', 'Rieger', null, '2007-08-05', null, 'drieger4e@bloglovin.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Winfred', 'Hinge', 'Female', null, '+228-554-300-5974', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Marc', 'Treamayne', 'Female', null, '+351-356-860-5101', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Karrie', 'Simonazzi', null, null, '+86-371-180-4471', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Merrielle', 'Hornig', 'Male', null, '+86-907-364-9626', 'mhornig4i@mapy.cz');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Cacilie', null, null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Jeffrey', null, 'Male', null, null, 'jdarth4k@plala.or.jp');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Mariann', null, null, null, '+86-626-695-6249', 'mwillment4l@paginegialle.it');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Sandy', 'Levet', null, null, null, 'slevet4m@delicious.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Maire', 'Moger', 'Female', null, '+82-932-251-3155', 'mmoger4n@fotki.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Selby', 'Hurnell', 'Male', null, '+66-854-982-8917', 'shurnell4o@indiegogo.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Karil', 'Harcombe', null, null, null, 'kharcombe4p@symantec.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Saunderson', null, 'Male', null, '+63-858-839-4494', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Chaddy', 'Tipper', null, null, '+86-242-780-8081', 'ctipper4r@woothemes.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Bartholomeus', 'Tilberry', 'Female', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Reiko', null, 'Male', null, '+86-889-546-6998', 'rmccray4t@timesonline.co.uk');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Zandra', 'Schober', 'Male', null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Golda', 'Starmer', 'Male', null, null, 'gstarmer4v@usda.gov');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Sterling', 'Mallon', null, '2009-06-17', '+55-563-430-8452', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ethelind', null, 'Male', '2009-03-25', null, 'ebrozek4x@hibu.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Felicity', 'Hendren', null, null, '+242-744-273-8445', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Jane', 'Gogay', 'Male', null, null, 'jgogay4z@odnoklassniki.ru');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Amery', 'Thinn', 'Female', null, null, 'athinn50@sun.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Debbie', 'Tithacott', 'Female', null, '+7-585-314-4164', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Emalia', 'Brummitt', null, null, '+385-693-914-6506', 'ebrummitt52@so-net.ne.jp');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Dulcinea', 'Marner', 'Female', null, '+30-380-747-5834', 'dmarner53@1688.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Gregor', null, 'Female', '2007-06-11', '+86-344-390-4967', 'gsnuggs54@bloomberg.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Samuel', 'Ruckert', 'Female', null, '+63-638-950-9474', 'sruckert55@com.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Creighton', 'Scarr', null, null, null, 'cscarr56@youku.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Ephraim', 'Fosdick', null, null, '+51-948-888-7813', 'efosdick57@time.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Chryste', 'Rewcastle', null, null, '+62-116-579-6843', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Rea', 'Bentson', null, null, '+81-359-317-4359', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Nadia', 'Blunt', null, null, '+33-352-913-3482', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Daren', 'Cluderay', 'Male', null, '+351-447-546-0050', 'dcluderay5b@github.io');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Engelbert', null, null, null, null, null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Korry', 'Krahl', 'Male', null, null, 'kkrahl5d@salon.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Gates', 'Jonsson', 'Male', null, '+62-197-577-8933', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Benita', 'Bysh', 'Male', null, '+976-297-663-7654', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Sharyl', 'Force', 'Female', null, '+55-528-877-9338', null);
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Emyle', 'Rennick', null, null, '+62-396-574-2568', 'erennick5h@canalblog.com');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Biron', 'Leyzell', 'Male', null, null, 'bleyzell5i@joomla.org');
insert into customer (id, first_name, last_name, gender, date_of_birth, phone, email) values (uuid_generate_v4(), 'Lester', 'Brogiotti', 'Male', null, '+7-155-850-0999', 'lbrogiotti5j@cbc.ca');