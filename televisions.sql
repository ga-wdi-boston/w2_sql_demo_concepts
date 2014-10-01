-- In case there is already a televisions_lab database, drop it

DROP DATABASE televisions_lab;

-- Create a televisions_lab database

CREATE DATABASE televisions_lab;

-- Connect to the televisions_lab databases

\c televisions_lab

-- Create a tv_models table
--  The table should have id, make, model, screen_size, resolution,
--  price, release_date, photo_url

CREATE TABLE tv_models (
  id SERIAL PRIMARY KEY,
  make TEXT,  -- what are the data types for make, model, screen_size, res?
  model TEXT,
  screen_size TEXT,
  resolution INTEGER,
  price DECIMAL,
  release_date DATE,
  photo_url TEXT
);

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns

ALTER TABLE tv_models
DROP resolution;
ALTER TABLE tv_models
ADD vertical_resolution INTEGER;
ALTER TABLE tv_models
ADD horizontal_resolution INTEGER;

-- Insert 10 televisions into the tv_models table

INSERT INTO tv_models (
  make,
  model,
  screen_size,
  price,
  release_date,
  photo_url,
  vertical_resolution,
  horizontal_resolution
  )
VALUES (
  'Samsung',
  'XG',
  '20in',
  299.99,
  '20140815',
  'http://localhost:3000',
  '1600',
  '1960'
);

-- Select all entries from the tv_models table

SELECT * FROM tv_models;