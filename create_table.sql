CREATE TABLE songwriter (
	id_songwriter serial PRIMARY KEY,
	name varchar(40) NOT NULL UNIQUE
);


CREATE TABLE genre (
	id_genre serial PRIMARY KEY,
	name varchar(40) NOT NULL UNIQUE
);



CREATE TABLE album (
	id_album serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	release_year integer NOT NULL CHECK(release_year >= 1900)
);


CREATE TABLE track (
	id_track serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	duration integer NOT NULL,
	id_album integer REFERENCES album(id_album)
);


CREATE TABLE compilation (
	id_compilation serial PRIMARY KEY,
	name varchar(40) NOT NULL,
	release_year integer NOT NULL CHECK(release_year >= 1900)
);


CREATE TABLE track_compilation (
	id_track_compilation serial PRIMARY KEY,
	id_track integer REFERENCES track(id_track),
	id_compilation integer REFERENCES compilation(id_compilation)
);


CREATE TABLE genre_songwriter (
	id_genre_songwriter serial PRIMARY KEY,
	id_genre integer REFERENCES genre(id_genre),
	id_songwriter integer REFERENCES songwriter(id_songwriter)
);


CREATE TABLE album_songwriter (
	id_album_songwriter serial PRIMARY KEY,
	id_album integer REFERENCES album(id_album),
	id_songwriter integer REFERENCES songwriter(id_songwriter)
);
