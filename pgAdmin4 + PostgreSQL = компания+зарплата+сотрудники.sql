//1) Вывести среднюю заработную плату всех тестировщиков на проекте “ПУМЧД”. Ответ должен содержать столбцы: 
• Название проекта; 
• Название должности; 
• Средняя заработная плата.
select project_name from projects, titel_name from titles, salary from positions
where project_name = 'ПУМЧД', titel_name = 'qa engineer', avg(salary) as 'avg_salary'
group by avg_salary'


//2) Вывести всех работников, которые работают сразу на нескольких проектах. Ответ должен содержать следующие столбцы: • Имя и фамилия сотрудника; 
• Название должности.

select e.first_name, e.last_name, i.Name as id
from employee e and titles t
join projects on p.project_id = e.employee_id
where i.Name(concat_ws(e.first_name, '', e.last_name))
group by p.project_id
having count(*) > 1