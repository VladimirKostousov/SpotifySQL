--2.1
SELECT name, duration FROM music_track
WHERE duration = (SELECT MAX(duration) FROM music_track);
--2.2
SELECT name FROM music_track
WHERE duration >= 210;
--2.3
SELECT name FROM collector
WHERE date_of_creation BETWEEN 2018 AND 2020;
--2.4
SELECT nickname FROM executor
WHERE nickname NOT LIKE '% %';
--2.5
SELECT name FROM music_track
WHERE string_to_array(lower("name"), ' ') && ARRAY['my'];
--3.1
SELECT name, COUNT(executor_id) ei FROM genre g
JOIN executor_genre eg ON g.genre_id = eg.genre_id
GROUP BY g.name;
--3.2
SELECT COUNT(music_track_id) FROM music_track mt
JOIN albums a ON mt.albums_id = a.albums_id
WHERE a.date_of_creation BETWEEN 2019 AND 2020;
--3.3
SELECT a."name", AVG(mt.duration) avg_mt FROM albums a
LEFT JOIN music_track mt ON a.albums_id = mt.albums_id
GROUP BY a."name";
--3.4
SELECT nickname FROM executor e
WHERE nickname NOT IN (
SELECT exec."nickname" FROM executor exec
JOIN executor_albums ea ON exec.executor_id = ea.executor_id
JOIN albums a ON ea.albums_id = a.albums_id
WHERE a."date_of_creation" = 2020);
--3.5
SELECT c.name, exec.nickname FROM collector c
JOIN collector_track ct ON c.collector_id  = ct.collector_id
JOIN music_track mt ON mt.music_track_id = ct.music_track_id
JOIN albums a ON a.albums_id = mt.albums_id
JOIN executor_albums ea ON ea.albums_id = a.albums_id
JOIN executor exec ON exec.executor_id = ea.executor_id
WHERE exec."nickname" = 'Eminem'
GROUP BY c."name", exec."nickname";
