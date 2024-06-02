select * from imdb_top_movies;

select name,budget from imdb_top_movies
order by budget desc;

select name, rating from imdb_top_movies
order by 2 desc
limit 10;

select name, year from imdb_top_movies
order by 2 desc
limit 10;

select name,year,budget,run_time from imdb_top_movies
order by 3 desc
limit 10;

select name,box_office as sales from imdb_top_movies
order by 2 desc
limit 5;

select genre, count(genre) as Number_of_Categories
from imdb_top_movies
group by genre
order by count(genre) desc;

select certificate from imdb_top_movies;

select distinct(certificate),count(certificate) as Number_of_Certificate
from imdb_top_movies
group by certificate
order by 2 desc;

select name, budget,
case when budget < 1000000 then "Small Budget"
     when budget between  1000000 and 99000000 then "Medium Budget"
	 when budget >100000000 then "High Budget"
end as Budget_description
from imdb_top_movies;

select distinct(year) as Year, sum(budget) as Budget
from imdb_top_movies
group by year
order by 2 desc;

select distinct(year) as Year, sum(box_office) as Total_Sales
from imdb_top_movies
group by year
order by 2 desc;

select * from imdb_top_movies
where year >= 2005
order by 4 desc;

select * from imdb_top_movies
where run_time <="2h 30m";

select * from imdb_top_movies
where genre in("Drama");

select * from imdb_top_movies
where certificate ="Not Rated"
order by budget desc;

select run_time,budget from imdb_top_movies;
