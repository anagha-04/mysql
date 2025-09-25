create database movies_db;
use movies_db;
create table movie(id int auto_increment primary key,
                   movie_name varchar(30) not null,
                   language varchar(20),
                   director varchar(20),
                   runtime int);
describe movie;
create table reviews(id int auto_increment primary key,
                      user_name varchar(20),
                      review_comment varchar(20),
                      movie_id int,
                      foreign key (movie_id) references movie(id) on delete cascade);
describe reviews;
insert into movie(movie_name,language,director,runtime)values("lokah","malayalam","Domanic arun",140),
                                                             ("coolie","tamil","lokesh",133),
                                                             ("saiyaara","hindi","mohit suri",156);
                                                             
insert into reviews( user_name,review_comment,movie_id)values("arun","hzxwjajziwhzubwu",3),
                                                       ("arjun","jhxijsiwejx",1);
                                                       
insert into reviews(user_name,movie_id)values("abhi",3);
drop table movie;
drop table reviews;

-- fetch all movies-- 
select* from movie;


-- fetch all reviews-- 
select*from reviews;


-- fetch movies in specific language-- 
select movie_name from movie where movie.language="malayalam";


-- total count of movie-- 
select count(movie_name) as total_movie from movie;


-- show movie name having max of runtime-- 
select movie_name from movie where runtime =(select max(runtime) from movie);


-- show movie name along with username and review-- 
select movie.movie_name,reviews.user_name,reviews.review_comment from movie join reviews on movie.id = reviews.movie_id;


-- show all movies even they dont have review (left join)-- 
select movie.movie_name,reviews.review_comment from movie left join reviews on movie.id = reviews.movie_id;


-- display movie name along count of review  --
select movie.movie_name, count(reviews.review_comment) as total_review_count  from movie join reviews on movie.id = reviews.movie_id group by movie_name;

-- display movie name language review for a specific director--
select movie_name,language from movie where director= "lokesh";


-- show movie name with runtime above 120-- 
select movie_name,runtime from movie where runtime>140;




