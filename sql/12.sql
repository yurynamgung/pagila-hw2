/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

select y.title
from (
    select title
    from (
        select title, unnest(special_features) as special_feature
        from film
    ) t
    where special_feature='Behind the Scenes'
) y 
join (
    select title
    from (
        select title, unnest(special_features) as special_feature
        from film
    ) z
    where special_feature='Trailers'
) s on (y.title=s.title)
order by y.title;
