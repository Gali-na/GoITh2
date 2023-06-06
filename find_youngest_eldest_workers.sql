CREATE VIEW worker_birthday AS
SELECT 'YOUNGEST' AS TYPE, name_worker AS NAME, BIRTHDAY
FROM worker
WHERE birthday = (SELECT MAX(birthday) FROM worker)
UNION
SELECT 'ELDEST' AS TYPE, name_worker AS NAME, BIRTHDAY
FROM worker
WHERE birthday = (SELECT MIN(birthday) FROM worker);

select* from worker_birthday