SELECT * FROM es20230130.countries;
select REGION_ID from countries;
select distinct(REGION_ID) from countries;

select count(distinct(REGION_ID)) from countries;
select count(REGION_ID) from countries;

select count(COUNTRY_NAME) - count(distinct(COUNTRY_NAME)) from countries;

alter table countries
add constraint unique(COUNTRY_NAME);
select * from countries
where COUNTRY_NAME like 'B_____';

select * from countries
where COUNTRY_NAME like 'B%';


########

select * from regions;

insert into regions values (5,'Australia');

######
select * from employees;
#qual'è la persona che lavora da più anni
#quali persone hanno preso di più nell'mese di settembre

select * from employees
where HIRE_DATE < '1987-08-01';

select * from employees
where DEPARTMENT_ID = 50;

#per capire la media degli stipendi
select avg(Salary) from employees;

#salario tra 500 e 4000
select * from employees
where (SALARY > 500) and (SALARY < 4000);

#stipendio medio delle persone che hanno quel manager
select avg(SALARY) from employees
where MANAGER_ID= 100;


#####
select MANAGER_ID, avg(SALARY) from employees
group by MANAGER_ID;


#quante persone guadagnano più di 5000 in ogni dipartimento
select DEPARTMENT_ID,  count(*) from employees
where SALARY > 5000
group by DEPARTMENT_ID;

select * from employees;
#quanti manager in ogni settore dell'azienda 
#e quanti di loro prendono commissioni
#ritornarli ordinarli per id in ordine decrescente
select DEPARTMENT_ID, count(distinct(MANAGER_ID))
from employees
group by DEPARTMENT_ID
order by DEPARTMENT_ID desc;








