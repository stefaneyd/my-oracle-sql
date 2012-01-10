--Nugget #5: Single-row functions

select table_name from user_tables;

select * from regions;
select * from locations;
select * from departments;
select * from jobs;

SELECT
job_id, LOWER(job_id), INITCAP(job_id),
job_title, UPPER(job_title)
FROM jobs;

DESCRIBE dual;

SELECT user from dual;

