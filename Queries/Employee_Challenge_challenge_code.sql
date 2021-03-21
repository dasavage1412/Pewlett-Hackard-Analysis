-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date

--INTO nameyourtable
FROM employees as e
inner join titles as ti
on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no, ti.from_date DESC;
