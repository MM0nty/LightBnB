SELECT city, count(reservations.id)
FROM reservations JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY count(reservations.id) DESC