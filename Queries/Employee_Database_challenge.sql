SELECT * FROM employees;
SELECT * FROM titles;

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER by e.emp_no asc;

SELECT * FROM retirement_titles;

SELECT DISTINCT ON (rt.emp_no) rt.emp_no, 
	rt.first_name,
	rt.last_name,
	rt.title 
INTO Unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

SELECT * FROM Unique_titles;

SELECT title,
COUNT(*) 
INTO retiring_titles
FROM Unique_titles 
GROUP BY title
ORDER BY COUNT(*) DESC;

SELECT * FROM retiring_titles;

SELECT * FROM titles where (emp_no = '10663');
SELECT * FROM dept_emp where (emp_no = '10663');

--ORDER BY emp_no ASC, from_date DESC;


SELECT  DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
		ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (ti.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


