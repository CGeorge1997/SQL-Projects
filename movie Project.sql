-- SQL Project

use et1;

select * from movies_sql;

-- Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.

select Movie_name from movies_sql where Genre='drama';

-- Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.

select Movie_name,Lead_Star  from movies_sql where Lead_Star='Aamir Khan';

-- Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.

select Movie_name,Director from movies_sql where Director='Ram Gopal Verma';

-- Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.

select Movie_name,Number_of_Screens from movies_sql where Number_of_Screens > 1000;

-- Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset.

select Movie_name,Revenue from movies_sql where Revenue > 700000000;

-- Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.

select Movie_name,Budget from movies_sql where Budget < 10000000;

-- Retrieve the names of all the Bollywood movies which are flop in the dataset.

select Movie_name,Profit from movies_sql where Profit < 0;

-- Retrieve the names and profit of all the Bollywood movies in the dataset.

select Movie_name,Profit from movies_sql where Profit>0;

-- Retrieve the names and loss of all the Bollywood movies in the dataset.

select Movie_name,Profit as Profit from movies_sql where profit<0;

-- Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.

select Movie_Name,Release_period from movies_sql where Release_Period = 'Holiday';

-- Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.

select Movie_Name,Lead_star,Director from movies_sql where Lead_star='Akshay Kumar' and Director='Priyadarshan';

-- Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.

select Movie_name from movies_sql where Movie_Name like 'a%';

-- Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.

select Movie_name from movies_sql where Movie_Name like '%a';

-- Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.

select Movie_name from movies_sql where Movie_Name like '_a%';

-- Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.

select Movie_name,Music_Director from movies_sql where Music_Director='Amit Trivedi';

-- Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.

select Movie_name,Lead_Star,Genre from movies_sql where Lead_Star = 'Akshay Kumar' and Genre='comedy';

-- Retrieve the names of movies and star name starring khan in the dataset.

select Movie_name,Lead_Star from movies_sql where Lead_Star like '%Khan';

-- Retrieve all the information of movies race and race2 in the dataset.

select * from movies_sql where Movie_name in ('Race','Race 2');

-- Retrieve the names of all the thriller Bollywood movies in the dataset.

select Movie_Name,Genre from movies_sql where Genre='thriller';

-- Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.

select Movie_Name,Budget from movies_sql order by Budget desc;

-- Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.

select Movie_Name,Budget from movies_sql order by Budget desc limit 5;

-- Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.

select Movie_name,Revenue from movies_sql order by Revenue desc limit 10;

-- Retrieve the names of top 5 movies of salman khan in the dataset.

select Movie_name,Lead_star,Revenue from movies_sql where Lead_star='Salman Khan' order by Revenue desc limit 5;

alter table movies_sql add column Profit int;

update movies_sql set Profit = (Revenue - Budget);

-- Retrieve the names of top 5 floped movies in the dataset.

select Movie_Name,Profit from movies_sql order by Profit limit 5;

-- Retrieve the names of top 5 hit movies in the dataset.

select Movie_Name,Profit from movies_sql order by profit desc limit 5;

-- Which is the second movie released on maximum screens.

select Movie_Name,Number_of_Screens from movies_sql order by Number_of_Screens desc limit 1,1;

-- Which is the 10th movie with highest budget.

select * from movies_sql order by Profit desc limit 9,1;

-- Which is the 2nd movie of Amitabh Bachchan with highest budget. 

select Movie_Name,Lead_Star,Budget from movies_sql where Lead_Star = 'Amitabh Bachchan' order by Budget desc limit 1,1;

-- Which are the flopped movies of Akshay Kumar.

select Movie_name,Lead_Star,Profit from movies_sql where Lead_Star='Akshay Kumar' and Profit < 0;


-- With which director Sharukh Khan have given the biggest hit movie.

Select Movie_name,Lead_Star,Director,Profit from movies_sql where Lead_star = 'Shahrukh Khan' order by profit desc limit 1;






