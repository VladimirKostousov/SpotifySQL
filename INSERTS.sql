INSERT INTO genre(name)
VALUES('Rock'), ('Rap'), ('Pop');

INSERT INTO executor_genre(executor_id, genre_id)
VALUES(1, 1), (1, 3), (2, 3), (3, 2), (4, 3), (3, 1), (4, 1);

INSERT INTO executor(nickname)
VALUES('Linkin Park'), ('Sia'), ('Eminem'), ('Lana Del Rey');

INSERT INTO executor_albums(executor_id,albums_id)
VALUES(1, 1), (2, 2), (3, 3), (4, 4);

INSERT INTO albums(name, date_of_creation)
VALUES('One More Light', 2017), ('1000 Forms of Fear', 2014), ('The Eminem Show', 2002);

INSERT INTO albums(name, date_of_creation)
VALUES('Norman Fucking Rockwell!', 2019);

INSERT INTO music_track(name, duration, albums_id)
VALUES('One More Light', 255, 1), ('My Dad’s Gone Crazy', 267, 3), ('Sing for the Moment', 339, 3);

INSERT INTO music_track(name, duration, albums_id)
VALUES('Doin’ Time', 202, 4), ('Chandelier', 216, 2), ('Hostage', 176, 2);

INSERT INTO collector_track(music_track_id, collector_id)
VALUES(1, 3), (1, 4), (2, 3), (3, 1), (3, 2), (4, 4), (4, 5)

INSERT INTO collector(name, date_of_creation)
VALUES('First', 2001), ('Second', 2009), ('Third', 2015), ('Fourth', 2019), ('Fifth', 2021);