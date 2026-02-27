/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
SELECT country,sum(amount) as profit
FROM customer 
JOIN rental ON customer.customer_id=rental.customer_id
JOIN payment ON rental.rental_id=payment.rental_id
JOIN address ON address.address_id=customer.address_id
JOIN city ON address.city_id=city.city_id
JOIN country on country.country_id=city.country_id
GROUP BY country.country
ORDER BY country.country ASC ,profit DESC;
