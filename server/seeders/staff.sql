create table staff (
	id UUID NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	gender VARCHAR(7) NOT NULL CHECK (gender IN ('Male', 'Female')),
	date_of_birth DATE NOT NULL,
	phone VARCHAR(20) NOT NULL,
	email VARCHAR(100) NOT NULL,
	password VARCHAR(255) NOT NULL,
  roleId BIGSERIAL NOT NULL REFERENCES role(id),
  restaurantId UUID NOT NULL REFERENCES restaurant(id),
  UNIQUE(email)
);
