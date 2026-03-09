USE projects;
SELECT COUNT(*) FROM hr;
    
-- Data Cleaning
alter table hr
change column ï»¿id emp_id varchar(20) null;

describe hr;

set sql_safe_updates= 0;
update hr
set birthdate= CASE
   when birthdate like '%/%' then date_format(str_to_date(birthdate,'%m/%d/%Y'), '%Y-%m-%d')
   when birthdate like '%-%' then date_format(str_to_date(birthdate,'%m-%d-%Y'), '%Y-%m-%d')
   else null
END;
select birthdate from hr;

alter table hr
modify column birthdate date;

UPDATE hr
set hire_date= CASE
   when hire_date like '%/%' then date_format(str_to_date(hire_date,'%m/%d/%Y'), '%Y-%m-%d')
   when hire_date like '%-%' then date_format(str_to_date(hire_date,'%m-%d-%Y'), '%Y-%m-%d')
   else null
END;
select hire_date from hr;
alter table hr
modify column hire_date date;


UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;
SELECT termdate from hr;
SET sql_mode = 'ALLOW_INVALID_DATES';
ALTER TABLE hr
MODIFY COLUMN termdate DATE;

alter table hr add column age INT;
select * from hr;

update hr 
set age= timestampdiff(year, birthdate, CURDATE());

select birthdate, age from hr;

select
    min(age) as youngest,
    max(age) as oldest
from hr;

select  count(*) from hr where age<18;
