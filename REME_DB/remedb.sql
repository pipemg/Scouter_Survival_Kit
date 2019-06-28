CREATE TABLE reme_main (
	reme_id INT(6) UNSIGNED ZEROFILL,
	manada BOOL(1),	
	tropa BOOL(1),
	comunidad BOOL(1),
	clan BOOL(1),
	adultos BOOL(1),
	last_modif DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (reme_id)
);

CREATE TABLE reme_synonyms (
	reme_id INT(6) UNSIGNED ZEROFILL,
	name VARCHAR(50)
	PRIMARY KEY (reme_id,name)
);

CREATE TABLE reme_material (
	id INT,
	reme_id INT(6) UNSIGNED ZEROFILL,
	material varchar(50),
	quantity INT,
	units ENUM('Pieza(s)','Metro(s)', 'Centimetro(s)', 'metro(s) cuadrado(s)','Kilo(s)','Gramo(s)', 'Litro(s)'),
	description varchar(255),
	PRIMARY KEY (id)
);






CREATE TABLE reme_coments (
	comment_id BIGINT UNSIGNED, 
	user_id varchar(20),
	reme_id INT(6) UNSIGNED ZEROFILL,
	commentary varchar,
	PRIMARY KEY (reme_id,material)
);
