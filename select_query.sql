-- ЗАДАНИЕ 2

-- Название и продолжительность самого длительного трека.
select name, max(duration)
from track
group by name
limit 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
select name
from track
where duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select name
from collection
where release_date between '01-01-2018' and '01-01-2021';

-- Исполнители, чьё имя состоит из одного слова.
select name
from artist
where not name like '% %'

-- Название треков, которые содержат слово «мой» или «my».
select name 
from track
where name like '%my%' or name like '%мой%'

-- ЗАДАНИЕ 3

--Количество исполнителей в каждом жанре.
select g.name, count(ga.genre_id)
from genre_artist ga, genre g
where g.id = ga.genre_id 
group by g.name 

--Количество треков, вошедших в альбомы 2019–2020 годов.
select a.name, count(t.id)
from track t, album a
where t.album_id = a.id and a.release_date between '01-01-2019' and '01-01-2021'
group by a.name

--Средняя продолжительность треков по каждому альбому.
select a.name, avg(t.duration)
from track t, album a
where t.album_id = a.id
group by a.name

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT distinct(a.name)
FROM artist a
LEFT JOIN album_artist aa ON a.id = aa.artist_id
LEFT JOIN album al ON aa.album_id = al.id
WHERE a.id NOT IN (
    SELECT a.id
    FROM artist a
    left JOIN album_artist aa ON a.id = aa.artist_id
    left JOIN album al ON aa.album_id = al.id
    WHERE al.release_date between '01-01-2020' and '01-01-2021'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
select distinct(c.name)
from collection c
left join album_collection ac on c.id = ac.collection_id 
left join album a on ac.album_id = a.id 
left join album_artist aa on a.id = aa.album_id 
left join artist ar on aa.artist_id = ar.id 
where ar.name = 'Таймсквер'

