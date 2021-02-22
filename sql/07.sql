/*
 * A group of social scientists is studying American movie watching habits.
 * To help them, select the titles of all films that have never been rented by someone who lives in the United States.
 *
 * HINT:
 * This can be solved either with a LEFT JOIN or with the NOT IN operator.
 * You may choose whichever solution makes the most sense to you.
 */
SELECT DISTINCT
    title
FROM inventory
INNER JOIN film USING (film_id)
WHERE
    film_id NOT IN (
        SELECT DISTINCT
            film_id
        FROM film
        INNER JOIN inventory USING (film_id)
        INNER JOIN rental USING (inventory_id)
        INNER JOIN customer USING (customer_id)
        INNER JOIN address USING (address_id)
        INNER JOIN city USING (city_id)
        INNER JOIN country USING (country_id)
        WHERE
            country = 'United States'
    )
ORDER BY title;

