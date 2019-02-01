use adlister;

select ads.title, users.email
from ads
join users on ads.user = users.id
where ads.id = '1';

select ads.title, users.email
from ads
join users on ads.user = users.id
where ads.id = '2';

select ads.title, id.categories
from ads
join categories on ads.category1 = categories.id
join categories on ads.category2 = categories.id;

create table ads_categories (
  id int not null,
  category1 int not null,
  category2 int,
  foreign key (id) references ads(id),
  foreign key (category1) references categories(id),
  foreign key (category2) references categories(id)
);

insert into ads_categories (id, category1, category2)
values ('1', '1', null),
       ('2', '2', '3'),
       ('3', '1', null);

select ads.title, ads_categories.category1, ads_categories.category2, categories.category
from ads
join ads_categories on ads.id = ads_categories.id
join categories on ads_categories.category1 = categories.id
where ads.id = '1';


select title
from ads
where id in(
  select id
  from ads_categories
  where category1 = '1'
  );

select ads.title
from ads
join users on ads.user = users.id
where users.id = '3';
-- Top and bottom are doing the same thing but the top one is using joins and bottom is using sub-queries
select title
from ads
where user in (
  select id
  from users
  where id = '3'
  );