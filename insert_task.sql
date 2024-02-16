delete from album_artist;
delete from album_collection ;
delete from genre_artist;
delete from track_collection;

delete from genre;

insert into genre values
(1, 'Электронная музыка'), (2, 'Рок'), (3, 'Метал');


delete from artist;

insert into artist values
(1, 'Creo'), (2, 'F.O.O.L.'), (3, 'Wildways'), (4, 'Таймсквер');


delete from collection;

insert into collection values
(1, 'Лучшее: Рок', '20-07-2020'), (2, 'Лучшее: Электронная музыка', '09-04-2022'),
(3, 'Лучшее: Метал', '02-11-2020'), (4, 'Популярное', '16-02-2020');


delete from track;
delete from album;

insert into album values
(1, 'Troublemaker', '18-10-2021'), (2, 'Revenger', '06-04-2020'), 
(3, 'Anna', '29-10-2020'), (4, 'Odyssey', '26-10-2017'),
(5, 'Биполярка Ч.1', '08-09-2023'), (6, 'Вкус крови', '27-09-2019'), 
(7, 'Молодость', '04-11-2022');


insert into track values
(1, 1, 'Inertia', 224), (2, 2, 'Criminals', 251), (3, 3, 'Havana', 225), 
(4, 4, 'Dune', 210), (5, 5, 'Пускай всё горит', 246), (6, 6, 'Я.Л.Н.Л.Л.', 238), 
(7, 7, 'Враг мой', 239), (8, 2, 'Conflict', 188);

-- Связи

insert into album_artist values
(1, 2), (2, 2), (3, 3), (4, 1), (5, 4), 
(6, 4), (7, 4);

insert into album_collection values
(1, 2), (2, 2), (3, 3), (4, 2), (5, 1), 
(6, 4), (7, 1); 

insert into genre_artist values
(1, 1), (1, 2), (2, 4), (3, 3);

insert into track_collection values
(1, 2), (2, 2), (3, 3), (4, 2), (5, 1), 
(6, 1), (7, 1), (8, 2);



