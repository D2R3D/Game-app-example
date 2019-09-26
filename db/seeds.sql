drop table if exists users_login;
drop table if exists users;
drop table if exists games;

create table users (
users_id serial primary key,
name varchar(100),
email varchar(100),
is_admin boolean);

create table users_login (
users_login_id serial primary key,
user_id int references users(users_id),
hash text);

create table games (
games_id serial primary key,
title varchar(100),
price integer,
image text);

insert into games (title, price, image)
values ('The Witcher 3: Wild Hunt', 5999, 'https://images.igdb.com/igdb/image/upload/t_cover_big/tri1c6vbydeosoqajwt1.jpg'),
('God of War', 5999, 'https://images.igdb.com/igdb/image/upload/t_cover_big/cintjlnx6o8qyqtcnajl.jpg'),
('Persona 5', 4050, 'https://images.igdb.com/igdb/image/upload/t_cover_big/co1iea.jpg'),


select * from games