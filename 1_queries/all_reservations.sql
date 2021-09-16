SELECT reservations.*, properties.owner_id, AVG(rating)
FROM reservations JOIN property_reviews ON property_reviews.guest_id = reservations.guest_id
JOIN users ON reservations.guest_id = users.id
JOIN properties ON properties.id = reservations.property_id
WHERE reservations.guest_id = 1 AND end_date < now()::date
GROUP BY reservations.id, properties.owner_id
ORDER BY start_date ASC
LIMIT 10