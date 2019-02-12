DROP TABLE IF EXISTS animal;
CREATE TABLE animal (
    id INTEGER PRIMARY KEY,
    name TEXT,
    type TEXT,
    breed TEXT,
    color TEXT,
    age REAL, -- in years
    gender TEXT,
    weight REAL, -- in kg
    height REAL, -- in cm

    UNIQUE(name, type, breed, color, age, gender, weight, height)
);

DROP TABLE IF EXISTS client;
CREATE TABLE IF NOT EXISTS client (
    id INTEGER PRIMARY KEY
);

INSERT OR IGNORE INTO animal
    (name, type, breed, color, age, gender, weight, height)
VALUES
    ('Bob', 'Dog', 'Labrador', 'Yellow', 4.3, 'Male', 25.3, 31.2),
    ('Spot', 'Dog', 'Labrador', 'Black', 2, 'Female', 25.3, 31.2),
    ('Tangerine', 'Dog', 'German Shepherd', 'Black & Tan', 1.2, 'Male', 25.3, 31.2),
    ('Mister Tiggywinkles', 'Cat', 'Persian', 'White', 2.2, 'Female', 25.3, 31.2),
    ('Chloe Alice', 'Rabbit', 'American Fuzzy Lop', 'Tan', 14, 'Male', 25.3, 31.2);
