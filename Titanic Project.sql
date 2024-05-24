-- Titanic Project

use et2;

-- Select all columns for all passengers in the Titanic dataset.

select * from Titanic;

-- Display the number of passengers in each class (1st, 2nd, 3rd).

select Pclass,count(PassengerId) from Titanic group by Pclass;

-- Find the number of male and female passengers.

select sex,count(*) as 'Total' from Titanic group by sex;

-- Display the names of passengers who survived.

select * from Titanic where Survived ='Survived';

-- Find the average age of passengers.

select avg(age) from Titanic;

-- List the names and ages of passengers who were younger than 18.

select Name,Age from Titanic where age <18;

-- Display the number of passengers in each embarkation port (C, Q, S).

select Embarked,count(*) from Titanic group by Embarked;

-- Find the highest fare paid by any passenger.

select max(Fare) as 'Highest Fare' from Titanic;

-- List the average age of passengers for each class.

select Pclass,avg(age) from Titanic group by Pclass order by avg(age) desc;

-- Display the passenger names and ages for those who survived and were in 1st class.

select Name,Age Survived,Pclass from Titanic where Survived='Survived' and Pclass=1;

-- Find the number of passengers who paid more than 50 for their ticket.

select count(*) as 'Total Passengers' from Titanic where Fare > 50;

-- List the names of passengers who did not survive and were in 3rd class.

select * from Titanic where Survived='Died' and Pclass=3;

-- Find the number of passengers with missing values in the "Age" column.

select count(*) from Titanic where Age=0;

-- Display the passenger names and ages for those who embarked at port 'S' and survived.

select Name,Age from Titanic where Embarked='S' and Survived='Survived';

-- Calculate the total number of passengers on board.

select count(*) as 'Total Passengers' from Titanic;

-- List the average fare for each class.

select Pclass,avg(Fare) from Titanic group by Pclass order by avg(Fare) desc;

-- Display the passenger names and ages for those with a known age and a fare greater than 100.

select Name,Age from Titanic where Age!=0 and Fare >100;

-- Find the percentage of passengers who survived.

SELECT (COUNT(CASE WHEN Survived = 'Survived' THEN 1 END) / COUNT(*)) * 100 as Survival_Percentage FROM Titanic;

-- List the names of passengers who were in 2nd class and had a fare less than 20.

select Name,Pclass,Fare from Titanic where Pclass=2 and Fare <20;

-- Display the passenger names and ages for those who did not survive and were in 1st class.

select Name,Age,survived,Pclass from Titanic where Survived='Died' and Pclass=1;

-- Find the number of passengers for each combination of class and gender.

select Pclass,Sex,Count(*) from Titanic group by Pclass,Sex;

-- List the names of passengers who survived and were in 3rd class with an age less than 20.

select Name,Survived,Pclass,Age from Titanic where Survived='Survived' and Pclass=3 and Age<20;

-- Display the passenger names for those with the name starting with 'Mr.'

select * from (
select substring_index(Name,',',-1) as L_name from Titanic) as Last_name where L_name like '%Mr.%'; 

-- Find the average age of male and female passengers.

Select Sex,avg(Age) from Titanic group by Sex;

-- List the names of passengers who paid the highest fare.

select * from Titanic where fare =(
select max(Fare) from Titanic) order by Fare desc limit 1;

-- Find the number of passengers for each embarkation port and class.

select Pclass,Embarked,count(*) from Titanic group by Pclass,Embarked;

-- Display the passenger names and ages for those who survived and paid more than 200 for their ticket.

select Name,Age from Titanic where Survived='Survived' and Fare >200;

-- Find the average age of passengers who survived and those who did not.

select Survived,avg(Age) from Titanic group by Survived;

-- List the names of passengers who were in 1st class and had an age greater than 50.

select * from Titanic where Pclass=1 and Age>50;

-- Display the passenger names for those with the name ending with 'sson'.

select * from (
select SUBSTRING_INDEX(Name, ',', 1) AS first_name,
    SUBSTRING_INDEX(Name, ',', -1) AS last_name from Titanic) as Last_name where last_name like '%sson' or first_name like '%sson'; 



   
























