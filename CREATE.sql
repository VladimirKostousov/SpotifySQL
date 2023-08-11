CREATE TABLE IF NOT EXISTS genre (
genre_id SERIAL PRIMARY KEY,
name VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_genre (
executor_genre_id SERIAL PRIMARY KEY,
executor_id INTEGER REFERENCES executor(executor_id),
genre_id INTEGER REFERENCES genre(genre_id)
);

CREATE TABLE IF NOT EXISTS executor (
executor_id SERIAL PRIMARY KEY,
nickname VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS executor_albums (
executor_albums_id SERIAL PRIMARY KEY,
executor_id INTEGER REFERENCES executor(executor_id),
albums_id INTEGER REFERENCES albums(albums_id)
);

CREATE TABLE IF NOT EXISTS albums (
albums_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
date_of_creation SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS music_track (
music_track_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
duration INTEGER NOT NULL,
albums_id INTEGER REFERENCES albums(albums_id)
);

CREATE TABLE IF NOT EXISTS collector_track (
collector_track_id SERIAL PRIMARY KEY,
music_track_id INTEGER REFERENCES music_track(music_track_id),
collector_id INTEGER REFERENCES collector(collector_id)
);

CREATE TABLE IF NOT EXISTS collector (
collector_id SERIAL PRIMARY KEY,
name VARCHAR(80) NOT NULL,
date_of_creation SMALLINT NOT NULL
);