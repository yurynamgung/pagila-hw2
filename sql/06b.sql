/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */

select film.title
from film
left join inventory using (film_id)
where inventory.inventory_id is null
order by film.title;
