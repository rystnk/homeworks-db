SELECT t.name, t.duration
FROM track t
WHERE t.duration = (SELECT max(duration) FROM track);


SELECT t.name, t.duration
FROM track t
WHERE t.duration >= 3.5 * 60;


SELECT c.name
FROM compilation c
WHERE c.release_year between 2018 AND 2020;


SELECT s."name"
FROM songwriter s
WHERE length(s.name) - length(replace(s.name, ' ', '')) = 0;


WITH cte_1 AS
(SELECT 
substring(t."name" FROM '[а-яА-Яa-zA-Z\s]+') AS nname, id_track
FROM track t)
SELECT tr."name"
FROM cte_1 ct
JOIN track tr ON ct.id_track = tr.id_track
WHERE string_to_array(lower(ct.nname), ' ') && ARRAY['мой', 'my'];
