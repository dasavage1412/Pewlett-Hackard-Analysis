-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date

INTO Unique_Titles
FROM employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;
-- Creating Retiring titles
select count(ti.title), ti.title
into retiring_titles
from unique_titles as ti
group by ti.title
order by count(ti.title) DESC;



-- Creating mentor program
SELECT DISTINCT ON (e.emp_no)
e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
ti.title,
de.from_date,
de.to_date

--INTO mentorship_eligibilty
FROM employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;