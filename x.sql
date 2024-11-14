

SELECT * FROM courses;

SELECT * FROM assignments LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT * FROM  courses WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

--Query to display the Title and due_date of assignments for the course 1234
SELECT title, due_date
FROM assignments
Where course_id = 'COMP1234';

--qQuery to find the earliest assignment due date in the assignments tableassignments
SELECT min(due_date) AS earliest_due_date
FROM assignments;

--QUery to find the latest assignment due date in the assignments tabele assignments
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

--Query to display the title and due_date of assignments due in October 2024.
SELECT title, due_date
FROM assignments
Where due_date LIKE '2024-10%';

--Query to find the most recent due_date of assignments with a status of "Completed".assignments
SELECT max(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
