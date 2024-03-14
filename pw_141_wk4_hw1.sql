select *
from actor;

select first_name, last_name
from actor 
where last_name = 'Wahlberg';

select payment_id, amount
from payment 
where amount between 3.99 and 5.99
order by amount;

select film_id, inventory_id 
from inventory
order by film_id desc 
limit 1;

select staff_id, rental_id
from rental 
order by staff_id desc 
limit 1;

select first_name, last_name, staff_id 
from staff 
where staff_id = 2;

select first_name, last_name
from customer 
where last_name = 'William';

select distinct district
from address;

select store_id, last_name
from customer 
where last_name like '%es';

SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount) > 250;

--7. What film has the most actors in it? (use film_actor table and get film_id)

select COUNT(actor_id), film_id
from film_actor
group by film_actor.film_id
order by COUNT(actor_id) desc;

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?

select COUNT(film_id), rating
from film 
group by film.rating
order by COUNT(film_id) desc;