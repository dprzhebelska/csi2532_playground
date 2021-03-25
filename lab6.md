# Labo 6 Reponses

## Initializer le db

```bash
psql -c "CREATE DATABASE lab6"
psql lab6 -f ./db/lab6schema.sql
psql lab6 -f ./db/lab6seed.sql
```

## Questions

1. 
```SQL
select name, birthplace 
from artists;

     name     |  birthplace   
--------------+---------------
 Caravaggio   | Milan
 Picasso      | Malaga
 Leonardo     | Florence
 Michelangelo | Arezzo
 Josefa       | Seville
 Hans Hofmann | Weisenburg
 John         | San Francisco
(7 rows)

```
2. 
```SQL
select title, price 
from artworks 
where year > 1600;

      title      |  price   
-----------------+----------
 Three Musicians | 11000.00
 Waves           |  4000.00
 Blue            | 10000.00
(3 rows)

```
3.

```SQL
select title, price 
from artworks 
where year = 2000 or artist_name = 'Picasso';

      title      |  price   
-----------------+----------
 Three Musicians | 11000.00
 Waves           |  4000.00
 Blue            | 10000.00
(3 rows)

```

4. 

```SQL
select name, birthplace 
from artists 
where 
    extract(year from dateofbirth) > 1880 and 
    extract(year from dateofbirth) < 1930;

  name   |  birthplace   
---------+---------------
 Picasso | Malaga
 John    | San Francisco
(2 rows)

```

5.

```SQL
select name, birthplace 
from artists 
where style in 
    ('Modern', 'Baroque', 'Renaissance');

     name     |  birthplace   
--------------+---------------
 Caravaggio   | Milan
 Leonardo     | Florence
 Michelangelo | Arezzo
 Josefa       | Seville
 Hans Hofmann | Weisenburg
 John         | San Francisco
 Smith        | Ottawa
(7 rows)

```

6.

```SQL
select * 
from artworks 
order by title;

      title      | year |  type   |  price   | artist_name 
-----------------+------+---------+----------+-------------
 Blue            | 2000 | Modern  | 10000.00 | Smith
 The Cardsharps  | 1594 | Baroque | 40000.00 | Caravaggio
 Three Musicians | 1921 | Modern  | 11000.00 | Picasso
 Waves           | 2000 |         |  4000.00 | Smith
(4 rows)

```

7. 

```SQL
select name, id 
from customers 
join likeartists on likeartists.customer_id = customers.id 
where likeartists.artist_name = 'Picasso';

 name  | id 
-------+----
 Emre  |  4
 Saeid |  5
(2 rows)

```

8. 
```SQL
select name 
from customers
join likeartists on likeartists.customer_id = customers.id
where likeartists.artist_name in 
    (select artist_name 
    from artworks 
    where price > 30000 and type = 'Renaissance');

 name  
-------
 Saeid
(1 row)

```
