select em.first_name, em.last_name, em.phone_number, em.email, em.salary, sl.dt_operations, sl.product_id, sl.count_sales, sl.sum_sales, jb.job_title
from HR.employees em
inner join hr.sales sl
on em.employee_id= sl.employee_id
inner join hr.jobs jb
on jb.job_id = em.job_id
where sl.dt_operations between trunc(sysdate,'mm') and add_months(trunc(sysdate,'mm'),1) - interval '1' second
and jb.job_title in ('Sales Representative')
order by sl.dt_operations;
