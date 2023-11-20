use es20230130;

#il prodotto cartesiano può essere trasformato in un join filtrando le FK uguali
select * from countries, regions
where countries.REGION_ID = regions.REGION_ID;

select C.COUNTRY_NAME, R.REGION_NAME
from countries C
inner join regions R
on C.COUNTRY_ID = R.REGION_ID;

select * from countries C
right join regions R
on C.REGION_ID = R.REGION_ID
where C.COUNTRY_ID is null;

########################################
select DIPENDENTE.FIRST_NAME as NomeDIPENDENTE,
D.DIPENDENTE_NAME,
MANAGER.FIRST_NAME as NomeManager,
DIPENDENTE.EMPLOYEE_ID as IDdipendente,
MANAGER.EMPLOYEE_ID as IDmanager

from employees DIPENDENTE 
inner join departments D
on DIPENDENTE.DEPARTMENT_ID = D.DEPARTMENT_ID
inner join employees MANAGER
on DIPENDENTE.MANAGER_ID = MANAGER.EMPLOYEE_ID;

#stipendi di dipendenti e manager
select DIPENDENTE.FIRST_NAME as NomeDipendente,
DIPENDENTE.EMPLOYEE_ID as IDdipendente,
DIPENDENTE.SALARY as SalarioDipendente,
MANAGER.FIRST_NAME as NomeManager,
MANAGER.EMPLOYEE_ID as IDmanager,
MANAGER.SALARY as SalarioManager

from employees DIPENDENTE
inner join employees MANAGER
on DIPENDENTE.MANAGER_ID = MANAGER.EMPLOYEE_ID

where DIPENDENTE.SALARY >= MANAGER.SALARY;


############################################################

select * from job_history H
inner join jobs J on J.JOB_ID = H.JOB_ID
inner join employees E on E.EMPLOYEE_ID = H.EMPLOYEE_ID; 