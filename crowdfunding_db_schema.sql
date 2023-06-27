DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contacts;
DROP TABLE campaign;


create table category (
	category_id VARCHAR(50) NOT NULL PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);


create table subcategory (
	subcategory_id VARCHAR(50) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(50) NOT NULL
);


create table contacts (
	"Contact ID" INT NOT NULL PRIMARY KEY,
	"First Name" VARCHAR(30) NOT NULL,
	"Last Name" VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL
);


create table campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts("Contact ID"),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(120) NOT NULL,
	goal INT NOT NULL,
	pledged INT NOT NULL,
	outcome VARCHAR(30) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(50) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);



select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;







