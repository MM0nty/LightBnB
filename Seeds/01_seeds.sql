INSERT INTO users (id, name, email, password) VALUES (1, 'Name1', 'name1@email.com', 'password1');
INSERT INTO users (id, name, email, password) VALUES (2, 'Name2', 'name2@email.com', 'password2');
INSERT INTO users (id, name, email, password) VALUES (3, 'Name3', 'name3@email.com', 'password3');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, nightly_cost, parking_spaces, number_bathrooms, number_bedrooms, country, street, city, province, post_code, active) VALUES (1, 1, 'Title1', 'Description1', 'thumbnail1', 'cover1', 1, 1, 1, 1, 'Country1', 'Street1', 'City1', 'Province1', 'post_code1', true);
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, nightly_cost, parking_spaces, number_bathrooms, number_bedrooms, country, street, city, province, post_code, active) VALUES (2, 2, 'Title2', 'Description2', 'thumbnail2', 'cover2', 2, 2, 2, 2, 'Country2', 'Street2', 'City2', 'Province2', 'post_code2', false);
INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, nightly_cost, parking_spaces, number_bathrooms, number_bedrooms, country, street, city, province, post_code, active) VALUES (3, 3, 'Title3', 'Description3', 'thumbnail3', 'cover3', 3, 3, 3, 3, 'Country3', 'Street3', 'City3', 'Province3', 'post_code3', true);

INSERT INTO reservations (id, property_id, guest_id, start_date, end_date) VALUES (1, 1, 1, '2011-01-01T01:00:00.000Z', '2011-01-11T01:00:00.000Z');
INSERT INTO reservations (id, property_id, guest_id, start_date, end_date) VALUES (2, 2, 2, '2012-02-02T02:00:00.000Z', '2011-01-12T02:00:00.000Z');
INSERT INTO reservations (id, property_id, guest_id, start_date, end_date) VALUES (3, 3, 3, '2013-03-03T03:00:00.000Z', '2011-01-13T03:00:00.000Z');

INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (1, 1, 1, 1, 1, 'Message1');
INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (2, 2, 2, 2, 2, 'Message2');
INSERT INTO property_reviews (id, guest_id, property_id, reservation_id, rating, message) VALUES (3, 3, 3, 3, 3, 'Message3');