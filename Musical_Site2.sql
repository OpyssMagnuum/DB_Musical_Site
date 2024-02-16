CREATE TABLE IF NOT EXISTS Genre(
	id SERIAL primary key,
	name VARCHAR(60) unique not null
);

CREATE TABLE IF NOT EXISTS Artist(
	id SERIAL primary key,
	name VARCHAR(60) not null
);

CREATE TABLE IF NOT EXISTS Album(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	release_date DATE not null
);

CREATE TABLE IF NOT EXISTS Track(
	id SERIAL primary key,
	album_id INTEGER references Album(id),
	name VARCHAR(60) not null,
	duration INTEGER not null
);

CREATE TABLE IF NOT EXISTS Collection(
	id SERIAL primary key,
	name VARCHAR(60) not null,
	release_date DATE not null
);

CREATE TABLE IF NOT exists genre_artist(
	genre_id INTEGER references Genre(id),
	artist_id INTEGER references Artist(id),
	constraint ga primary key (genre_id, artist_id)	
);

CREATE TABLE IF NOT exists album_artist(
	album_id INTEGER references Album(id),
	artist_id INTEGER references Artist(id),
	constraint aa primary key (album_id, artist_id)	
);

CREATE TABLE IF NOT exists album_collection(
	album_id INTEGER references Album(id),
	collection_id INTEGER references Collection(id),
	constraint ac primary key (album_id, collection_id)	
);

CREATE TABLE IF NOT exists track_collection(
	track_id INTEGER references Track(id),
	collection_id INTEGER references Collection(id),
	constraint tc primary key (track_id, collection_id)	
);
