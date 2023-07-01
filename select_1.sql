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


SELECT t."name"
FROM track t
WHERE lower(t."name") like '%мой%' or lower(t."name") like '%my%';