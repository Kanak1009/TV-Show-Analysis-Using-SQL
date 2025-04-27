create database project;

use project;

select * from prime_tv_shows;

-- Top 5 lowest rated tv show with their rating. 
select Show_Name,Ratings 
from prime_tv_shows 
order by ratings limit 5;

-- Year With most tv show released
select release_year, count(*) as Show_Count
from prime_tv_shows group by release_year
order by Show_Count desc limit 3;

-- Tv Show with most seasons 
select show_name, no_of_season
from prime_tv_shows 
order by no_of_season desc limit 4;

-- HIGHEST-RATED TV SHOW OF EACH GENRE. 
select show_name, genre, ratings
from prime_tv_shows p1
where ratings = ( select max(ratings) 
from prime_tv_shows p2 
where p1.genre = p2.genre)
order by ratings desc limit 5;
 
select distinct viewers_age , show_name
from prime_tv_shows 
order by viewers_age  limit 5; 

select viewers_age from prime_tv_shows;
 
select genre,show_name,ratings from prime_tv_shows
where genre = "Comedy" order by ratings desc limit 5;