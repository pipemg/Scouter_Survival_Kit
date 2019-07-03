CREATE TABLE reme_main (
	reme_id INT(6) UNSIGNED ZEROFILL NOT NULL,
	creation_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	creator_user varchar(20) DEFAULT 'admingod',
	last_modif_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (reme_id)
);


CREATE TABLE reme_synonyms (
	reme_id INT(6) UNSIGNED ZEROFILL,
	name VARCHAR(50) NOT NULL, 
	PRIMARY KEY (reme_id,name)
);

CREATE TABLE reme_material (
	id INT NOT NULL,
	reme_id INT(6) UNSIGNED ZEROFILL NOT NULL,
	material varchar(50),
	description varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE reme_sections (
	reme_id INT(6) UNSIGNED ZEROFILL,
	manada BOOL(1) DEFAULT 0,	
	tropa BOOL(1) DEFAULT 0,
	comunidad BOOL(1) DEFAULT 0,
	clan BOOL(1) DEFAULT 0,
	adults BOOL(1) DEFAULT 0,
	age_min INT DEFAULT 0,
	age_max INT DEFAULT 99,
	PRIMARY KEY (id)
);


CREATE TABLE reme_objetivos_educativos (
	oe_id INT AUTO_INCREMENT,
	seccion ENUM('Manada','Tropa','Comunidad','Clan')  NOT NULL,
	area_crecimiento ENUM() NOT NULL,
	tipo	ENUM('Presa','Dentellada','Territorio','Exploración','Desafio','Camino','Objetivo')  NOT NULL,
	definicion VARCHAR(100) NOT NULL,
	PRIMARY KEY(oe_id)
);



CREATE TABLE reme_objetivos_terminales (
	id INT AUTO_INCREMENT,
	reme_id INT(6) UNSIGNED ZEROFILL,
	seccion ENUM('Manada','Tropa','Comunidad','Clan')  NOT NULL,
	presas_im VARCHAR(200),
	presas_it VARCHAR(200),
	dentelladas VARCHAR(200),
	territorios_pre VARCHAR(200),
	territorios_pub VARCHAR(200),
	exploraciones VARCHAR(200),
	desafios VARCHAR(200),
	caminos VARCHAR(200),
	objetivos_terminales VARCHAR(200),
	PRIMARY KEY(id)
);





CREATE TABLE reme_comments (
	comment_id BIGINT UNSIGNED NOT NULL, 
	chained_comment_id BIGINT UNSIGNED DEFAULT 0,
	comment_level BIT(5) DEFAULT 1,
	daytime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	user_id varchar(20) DEFAULT 'annon',
	reme_id INT(6) UNSIGNED ZEROFILL,
	commentary varchar,
	PRIMARY KEY (comment_id)
);


CREATE TABLE annon_ips (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
	daytime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
)



