CREATE TABLE users (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  passdword VARCHAR(255)
);

CREATE TABLE properties (
  id INTEGER PRIMARY KEY NOT NULL,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255),
  description TEXT,
  thumnail_photo_url VARCHAR(255),
  cover_photo_url VARCHAR(255),
  nightly_cost INTEGER,
  parking_spaces INTEGER,
  number_bathrooms INTEGER,
  number_bedrooms INTEGER,
  country VARCHAR(255),
  street VARCHAR(255),
  city VARCHAR(255),
  province VARCHAR(255),
  post_code VARCHAR(255),
  active BOOLEAN
);

CREATE TABLE reservations (
  id INTEGER PRIMARY KEY NOT NULL,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE property_reviews (
  id INTEGER PRIMARY KEY NOT NULL,
  guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
  reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
  rating SMALLINT,
  message TEXT
);