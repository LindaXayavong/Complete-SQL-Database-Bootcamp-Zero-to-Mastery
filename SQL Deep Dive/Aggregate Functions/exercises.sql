-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT avg(public.salaries.salary) from public.salaries

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

SELECT *
From public.employees
order by public.employees.birth_date DESC
LIMIT 1;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns

Select count(*) as total_towns
from public.towns

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage

select count(*) total_langauage 
from public.countrylanguage

-- Question 2: What is the average life expectancy in the world?
-- Table: country
  
select avg(public.country.lifeexpectancy)
from public.country

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

select avg(public.city.population) as average_population
from public.city
inner join public.country On public.city.countrycode = public.country.code
WHERE public.country.name = 'Netherlands';
