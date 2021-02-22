/*
 * Select the film_id and film columns for all films whose rental_rate is greater than the average.
 * Use the film table and order by title.
 */
SELECT
	film_id,
	title,
	rental_rate
FROM
	film
WHERE
	rental_rate > (
		SELECT
			AVG (rental_rate)
		FROM
			film
	);
