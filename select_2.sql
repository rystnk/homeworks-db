SELECT g."name" AS "name genre", COUNT(gs.id_genre_songwriter) AS "quantity songwriter"
FROM genre g
JOIN genre_songwriter gs ON g.id_genre = gs.id_genre
GROUP BY g."name";


SELECT COUNT(t.id_track) AS "quantity track"
FROM track t
JOIN album a ON t.id_album = a.id_album
WHERE a.release_year between 2019 AND 2020;


SELECT a."name" AS "album name", AVG(t.duration) AS "average track duration"
FROM track t
JOIN album a ON t.id_album = a.id_album
GROUP BY a."name";

SELECT DISTINCT s."name" AS "songwriter name"
FROM songwriter s
WHERE s."name" NOT IN (
SELECT DISTINCT s."name"
FROM songwriter s
JOIN album_songwriter al_s ON s.id_songwriter = al_s.id_songwriter
JOIN album a ON al_s.id_album = a.id_album
WHERE a.release_year IN (2020) );


SELECT DISTINCT c."name" AS "compilation name"
FROM compilation c
JOIN track_compilation tc ON c.id_compilation = tc.id_compilation
JOIN track t ON tc.id_track = t.id_track
JOIN album a ON t.id_album = a.id_album
JOIN album_songwriter al_s ON a.id_album = al_s.id_album
JOIN songwriter s ON al_s.id_songwriter = s.id_songwriter
WHERE s."name" = 'Баста';
