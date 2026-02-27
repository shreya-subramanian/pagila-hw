/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customers have paid for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT title ,sum(amount) as profit
FROM film
JOIN inventory ON inventory.film_id=film.film_id
JOIN rental on inventory.inventory_id=rental.inventory_id
JOIN payment on rental.rental_id=payment.rental_id
GROUP BY title
ORDER BY profit DESC;
