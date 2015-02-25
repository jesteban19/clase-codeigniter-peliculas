CREATE TABLE comentarios
(
	idcomentario         INTEGER PRIMARY KEY AUTO_INCREMENT,
	idpelicula           INTEGER NOT NULL,
	name                 VARCHAR(50) NULL,
	comment              VARCHAR(200) NULL,
	date                 DATETIME NULL
);




CREATE TABLE peliculas
(
	idpelicula           INTEGER PRIMARY KEY AUTO_INCREMENT,
	username             varchar(20) NULL,
	date                 DATETIME NULL,
	title                VARCHAR(200) NULL,
	description          TEXT NULL,
	image                TEXT NULL,
	pos                  INTEGER NULL,
	neg                  INTEGER NULL,
	count_comments       INTEGER NULL
);




CREATE TABLE usuarios
(
	username             varchar(20) NOT NULL,
	password             VARCHAR(500) NULL,
	type                 VARCHAR(30) NULL
);




ALTER TABLE usuarios
ADD PRIMARY KEY (username);



ALTER TABLE comentarios
ADD FOREIGN KEY R_2 (idpelicula) REFERENCES peliculas (idpelicula);



ALTER TABLE peliculas
ADD FOREIGN KEY R_3 (username) REFERENCES usuarios (username);
