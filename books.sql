create database Book;
create table books_details(id int,book_name char(30),price int,genre char(30));
show tables;
describe books_details;
insert into books_details(id,book_name,price,genre)value(1,"The silent patient",399,"Thriller"),
													   (2,"The alchemist",350,"inspirational");
select * from books_details;				
