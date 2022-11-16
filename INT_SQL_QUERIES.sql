/* CREATING DATASETS*/
create table users
(
user_id int primary key,
user_name varchar(30) not null,
email varchar(50));

insert into users values
(1, 'Sumit', 'sumit@gmail.com'),
(2, 'Reshma', 'reshma@gmail.com'),
(3, 'Farhana', 'farhana@gmail.com'),
(4, 'Robin', 'robin@gmail.com'),
(5, 'Robin', 'robin@gmail.com');

DROP TABLE employee;
CREATE TABLE employee 
(
emp_id int primary key,
emp_name varchar(50) not null,
dept_name varchar(50) not null,
salary int not null
);
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);

drop table doctors;
create table doctors
(
id int primary key,
name varchar(50) not null,
speciality varchar(100),
hospital varchar(50),
city varchar(50),
consultation_fee int
);

insert into doctors values
(1, 'Dr. Shashank', 'Ayurveda', 'Apollo Hospital', 'Bangalore', 2500),
(2, 'Dr. Abdul', 'Homeopathy', 'Fortis Hospital', 'Bangalore', 2000),
(3, 'Dr. Shwetha', 'Homeopathy', 'KMC Hospital', 'Manipal', 1000),
(4, 'Dr. Murphy', 'Dermatology', 'KMC Hospital', 'Manipal', 1500),
(5, 'Dr. Farhana', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1700),
(6, 'Dr. Maryam', 'Physician', 'Gleneagles Hospital', 'Bangalore', 1500);


drop table login_details;
create table login_details(
login_id int primary key,
user_name varchar(50) not null,
login_date date);

delete from login_details;
insert into login_details values
(101, 'Michael', GETDATE()),
(102, 'James', GETDATE()),
(103, 'Stewart', GETDATE()+1),
(104, 'Stewart', GETDATE()+1),
(105, 'Stewart', GETDATE()+1),
(106, 'Michael', GETDATE()+2),
(107, 'Michael', GETDATE()+2),
(108, 'Stewart', GETDATE()+3),
(109, 'Stewart', GETDATE()+3),
(110, 'James', GETDATE()+4),
(111, 'James', GETDATE()+4),
(112, 'James', GETDATE()+5),
(113, 'James', GETDATE()+6);

drop table students;
create table students
(
id int primary key,
student_name varchar(50) not null
);
insert into students values
(1, 'James'),
(2, 'Michael'),
(3, 'George'),
(4, 'Stewart'),
(5, 'Robin');

drop table weather;
create table weather
(
id int,
city varchar(50),
temperature int,
day date
);
delete from weather;
insert into weather values
(1, 'London', -1, '2021-01-01'),
(2, 'London', -2, '2021-01-02'),
(3, 'London', 4, '2021-01-03'),
(4, 'London', 1,'2021-01-04'),
(5, 'London', -2, '2021-01-05'),
(6, 'London', -5, '2021-01-06'),
(7, 'London', -7,'2021-01-07'),
(8, 'London', 5,'2021-01-08')


drop table event_category;
create table event_category
(
  event_name varchar(50),
  category varchar(100)
);

drop table physician_speciality;
create table physician_speciality
(
  physician_id int,
  speciality varchar(50)
);

drop table patient_treatment;
create table patient_treatment
(
  patient_id int,
  event_name varchar(50),
  physician_id int
);


insert into event_category values ('Chemotherapy','Procedure');
insert into event_category values ('Radiation','Procedure');
insert into event_category values ('Immunosuppressants','Prescription');
insert into event_category values ('BTKI','Prescription');
insert into event_category values ('Biopsy','Test');


insert into physician_speciality values (1000,'Radiologist');
insert into physician_speciality values (2000,'Oncologist');
insert into physician_speciality values (3000,'Hermatologist');
insert into physician_speciality values (4000,'Oncologist');
insert into physician_speciality values (5000,'Pathologist');
insert into physician_speciality values (6000,'Oncologist');


insert into patient_treatment values (1,'Radiation', 1000);
insert into patient_treatment values (2,'Chemotherapy', 2000);
insert into patient_treatment values (1,'Biopsy', 1000);
insert into patient_treatment values (3,'Immunosuppressants', 2000);
insert into patient_treatment values (4,'BTKI', 3000);
insert into patient_treatment values (5,'Radiation', 4000);
insert into patient_treatment values (4,'Chemotherapy', 2000);
insert into patient_treatment values (1,'Biopsy', 5000);
insert into patient_treatment values (6,'Chemotherapy', 6000);

drop table patient_logs;
create table patient_logs
(
  account_id int,
  date DATE,
  patient_id int
);

insert into patient_logs values (1, ('2020-01-02'), 100);
insert into patient_logs values (1, ('2020-01-27'), 200);
insert into patient_logs values (2, ('2020-01-01'), 300);
insert into patient_logs values (2, ('2020-01-27'), 400);
insert into patient_logs values (2, ('2020-01-21'), 300);
insert into patient_logs values (2, ('2020-01-01'), 500);
insert into patient_logs values (3, ('2020-01-20'), 400);
insert into patient_logs values (1, ('2020-03-04'), 500);
insert into patient_logs values (3, ('2020-01-20'), 450);

/*Q1*/
/* Fetching duplicated data on a table */

SELECT *
FROM
	(SELECT *, ROW_NUMBER() OVER ( PARTITION BY user_name ORDER BY user_id) AS same
	FROM users u 
	) x
where x.same !=2
order by user_id

/*Q2*/
/* Write a SQL query to fetch the second last record from employee table */


SELECT emp_id,emp_name,dept_name,salary 
FROM(
	SELECT *,ROW_NUMBER() OVER (ORDER BY emp_id DESC) AS ranking
	FROM employee
	) AS X
WHERE X.ranking  = 2
ORDER BY emp_id ASC


/*Q3*/
/* Write a SQL query to display only the details of employees who either earn the highest salary or the lowest salary in each department from the employee table */

SELECT emp_id,emp_name,dept_name,salary
FROM(
	SELECT *,RANK() OVER (PARTITION BY dept_name ORDER BY salary DESC)  AS rnk_maks, MIN(salary) OVER (PARTITION BY dept_name) AS min
	FROM employee
	
	) AS X 
WHERE X.rnk_maks = 1 OR X.salary=X.min
ORDER BY dept_name 

/*Q4*/
/* From the doctors table, fetch the details of doctors who work in the same hospital but in different specialty */

SELECT * FROM doctors

SELECT A.id,A.name,A.speciality,A.hospital,A.city,A.consultation_fee 
FROM doctors A 
INNER JOIN doctors B ON A.hospital=B.hospital AND A.speciality<>B.speciality AND A.id<> B.id

/*Q5*/
/*  Write SQL query to fetch the doctors who work in same hospital irrespective of their specialty. */
SELECT A.id,A.name,A.speciality,A.hospital,A.city,A.consultation_fee 
FROM doctors A 
INNER JOIN doctors B ON A.hospital=B.hospital AND A.id<> B.id

/*Q6*/
/* From the login_details table, fetch the users who logged in consecutively 3 or more times */
SELECT DISTINCT user_name
FROM 
(
	SELECT *, CASE 
				WHEN
				user_name=	LEAD (user_name) OVER (ORDER BY login_id) 
				AND
				user_name=	LEAD (user_name,2) OVER (ORDER BY login_id) THEN user_name
				ELSE NULL

	END AS rpt
	FROM login_details) AS X
where x.rpt IS NOT NULL

/*Q7*/
/* From the students table, write a SQL query to interchange the adjacent student names. */

SELECT id,student_name,
	CASE 
		WHEN id%2 <> 0 THEN   /* IF MOD 2 <> O THEN CHANGE THE STUDENT NAME WITH NEXT ONE */
			LEAD(student_name,1,student_name) OVER (ORDER BY id)  /* IF OUT OF RANGE THEN RETURNED VALUE WILL BE student_name*/
		WHEN id%2 = 0 THEN /* IF MOD 2 = O THEN CHANGE THE STUDENT NAME WITH PREVIOUS ONE */
			LAG(student_name) OVER (ORDER BY id) 
	END AS new_student_name
FROM students

/*Q8*/
/* From the weather table, fetch all the records when London had extremely cold temperature ( BELOW ZERO ) for 3 consecutive days or more */

SELECT W.id,W.city,W.temperature,W.day
FROM(
	SELECT *, CASE
					WHEN temperature<0 AND  LEAD(temperature) OVER (ORDER BY day) < 0 AND LEAD(temperature,2) OVER (ORDER BY day) < 0 THEN 'COLD' /* CHECK FOR CURRENT DAY , NEXT DAY AND THE DAY AFTER TOMMOROW */
					WHEN temperature<0 AND LEAD(temperature) OVER (ORDER BY day) <0 AND LAG(temperature) OVER (ORDER BY day) < 0 THEN 'COLD' /* CHECK FOR CURRENT DAY, NEX DAY AND PREVIOUS DAY */
					WHEN temperature<0 AND LAG(temperature) OVER (ORDER BY day) <0  AND LAG(temperature,2) OVER (ORDER BY day) <0 THEN 'COLD'/* CHECK FOR CURRENT DAY , YESTERDAY AND DAY BEFORE YESTERDAY */

				END AS c
	FROM weather
) AS W
WHERE W.c ='COLD'

SELECT * FROM weather
/*Q9*/
/*From the following 3 tables (event_category, physician_speciality, patient_treatment), 
write a SQL query to get the histogram of specialties of the unique physicians who have done the procedures but never did prescribe anything */


SELECT DISTINCT D.speciality,COUNT(physician_id) AS no_of_specialty
FROM (
	SELECT 
	PS.physician_id,speciality 
	FROM patient_treatment AS PT 
	JOIN event_category AS EC ON PT.event_name=EC.event_name
	JOIN physician_speciality AS PS ON PT.physician_id =PS.physician_id
	WHERE EC.category ='Procedure' AND PT.physician_id NOT IN
											(SELECT pt2.physician_id 
												FROM patient_treatment pt2 JOIN event_category ec2 ON PT2.event_name=ec2.event_name
												WHERE ec2.category = 'Prescription')
) AS D
GROUP BY D.speciality

/*Q10*/
/*Find the top 2 accounts with the maximum number of unique patients on a monthly basis.*/

SELECT month,account_id,no_of_patient FROM
(
	SELECT *,RANK() OVER (PARTITION BY month ORDER BY no_of_patient DESC,account_id) rnk
	FROM
		(SELECT month,account_id,COUNT(1) AS no_of_patient
		FROM
			(SELECT  DISTINCT account_id,DATENAME(MONTH,date) AS month, patient_id
			FROM patient_logs) p1
		GROUP BY month,account_id) AS P2
) AS P3
WHERE rnk IN (1,2)

