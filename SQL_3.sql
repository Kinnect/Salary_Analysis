SELECT
	e.gender,
    d.dept_name,
    ROUND(AVG(s.salary),2) as salary,
    YEAR(s.from_date) as calender_year
FROM
	t_salaries s 
		JOIN
    t_employees e ON s.emp_no = e.emp_no
		JOIN
	t_dept_emp de ON de.emp_no = e.emp_no
		JOIN
	t_departments d ON d.dept_no = de.dept_no
GROUP BY d.dept_no, e.gender, calender_year
HAVING calender_year <= 2002
ORDER BY d.dept_no;

