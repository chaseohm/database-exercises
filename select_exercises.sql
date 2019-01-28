use codeup_test_db;

select name
From albums
where Artist = 'Pink Floyd';

select release_date
from albums
where name = '%Sgt Pepper%';

select genre
from albums
where name = 'Nevermind';

select release_date
from albums
where release_date >= 1990;

select name
from albums
where Sales <= 20;

