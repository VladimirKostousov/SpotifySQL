SELECT name, duration FROM music_track
WHERE MAX (duration);

SELECT name FROM music_track
WHERE duration => 210;

SELECT name FROM collector
WHERE date_of_creation BETWEEN 2018 AND 2020;

SELECT nickname FROM executor
WHERE nickname NOT LIKE '% %';

SELECT name FROM music_track
WHERE name LIKE '%My%' OR '%мой%';

SELECT name, COUNT(executor_id) ei FROM genre g
JOIN executor_genre eg ON g.genre_id = eg.genre_id
GROUP BY ei;

SELECT COUNT(music_track_id) FROM music_track mt
JOIN albums a ON mt_albums_id = a_albums_id
WHERE a.date_of_creation BETWEEN 2019 AND 2020;

SELECT a.'name', AVG(mt.duration) avg_mt FROM albums a
LEFT JOIN music_track mt ON a.albums_id = mt.albums_id
GROUP BY a.'name';

SELECT nickname FROM executor e
WHERE nickname NOT IN (
SELECT exec.'nickname' FROM executor exec
JOIN executor_albums ea ON exec.executor_id = ea.artist_id
JOIN albums a ON ea.albums_id = a.albums_id
WHERE a.'year' = 2020);

SELECT c.name, exec.nickname FROM collector c
JOIN collector_track ct ON c.collector_track_id = ct.collector_track_id
JOIN music_track mt ON mt.music_track_id = ct.music_track_id
JOIN albums a ON a.albums_id = mt.albums_id
JOIN executor_albums ea ON ea.albums_id = a.albums_id
JOIN executor exec ON exec.executor_id = ea.executor_id
WHERE exec.'nickname' = 'Sia'
GROUP BY c.'name', exec.'nickname';
