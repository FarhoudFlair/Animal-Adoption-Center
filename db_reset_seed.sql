DROP TABLE IF EXISTS animal;
CREATE TABLE animal (
    id INTEGER PRIMARY KEY,
    name TEXT DEFAULT '',
    type TEXT,
    breed TEXT,
    color TEXT,
    age REAL, -- in years
    sex TEXT,
    weight REAL, -- in kg
    height REAL, -- in cm
    health REAL,

    libido REAL,
    aggressiveness REAL,
    extroversion REAL,
    temper REAL,
    obedience REAL,
    endurance REAL,
    activeness REAL,
    impulsivity REAL,
    distractibility REAL,
    adaptability REAL,
    regularity REAL,
    intelligence REAL,
    independence REAL,
    training REAL,
    cost REAL
);

DROP TABLE IF EXISTS client;
CREATE TABLE IF NOT EXISTS client (
    id INTEGER PRIMARY KEY,
    name TEXT,
    phone_number TEXT,
    address TEXT,
    email TEXT,
    patience INT,
    experience INT,
    activeness INT,
    age REAL, -- in years
    income REAL, -- in dollars

    preferred_animal INT REFERENCES animal(id)
);

INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (0, 'Donovan', 'Rabbit', 'American Fuzzy Lop', 'Green', 29.46895069174862, 'Female', 96.35993301874477, 49.292189654802904, 3, 1, 3, 0, 2, 3, 4, 0, 3, 2, 1, 3, 2, 2, 2, 312449.9479519065);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Marti', 'Cat', 'Munchkin', 'White', 23.528979954160373, 'Female', 143.01287922728864, 111.639722611136, 3, 4, 4, 4, 3, 2, 0, 4, 3, 3, 2, 0, 0, 2, 2, 342537.6157363309);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Persia', 'Horse', 'Paso Fino', 'Green', 26.023877526619522, 'Female', 199.79119718963426, 161.05467121700622, 1, 2, 2, 3, 0, 1, 1, 0, 0, 3, 4, 0, 1, 0, 0, 170565.76327823673);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Paul', 'Fish', 'Siamese Fighting Fish', 'Spotted', 22.902432432095797, 'Male', 42.21326476166784, 158.70756384879488, 4, 0, 4, 0, 2, 1, 1, 0, 0, 0, 2, 3, 3, 4, 2, 390768.1862455141);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Parker', 'Cat', 'Munchkin', 'Spotted', 3.0253733979772184, 'Female', 50.508087047577746, 38.75266134459514, 3, 3, 2, 0, 0, 0, 3, 3, 3, 3, 1, 4, 2, 4, 1, 330338.0086965001);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Zeke', 'Rabbit', 'Dutch', 'Spotted', 9.207645274777493, 'Female', 182.55985471114104, 98.66498915591097, 1, 2, 0, 3, 0, 0, 3, 1, 1, 4, 4, 2, 1, 4, 1, 119632.78691289267);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Bagel', 'Hamster', 'Chinese', 'Green', 8.196444320465474, 'Female', 16.974628332881913, 130.0646416810669, 0, 2, 2, 4, 4, 1, 1, 3, 0, 4, 1, 3, 0, 0, 0, 211147.074782379);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'Olive', 'Horse', 'Paso Fino', 'Green', 28.81166497193497, 'Female', 71.83514086786761, 50.508781267106656, 3, 3, 4, 1, 2, 0, 3, 0, 3, 4, 4, 0, 2, 1, 2, 418934.02509682387);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Candy', 'Horse', 'Trakehner', 'Gray', 5.738546129540289, 'Female', 53.00125582308755, 168.53885331306472, 1, 2, 0, 3, 1, 3, 3, 4, 0, 1, 2, 4, 4, 1, 2, 279721.7373901297);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Moby', 'Horse', 'Paso Fino', 'Gray', 20.58874557811461, 'Female', 14.633408389708354, 98.14172452147807, 2, 0, 4, 0, 2, 3, 0, 2, 1, 0, 1, 3, 1, 3, 1, 310139.28388966597);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Zeppelin', 'Rabbit', 'American Fuzzy Lop', 'Black', 3.562314427284569, 'Male', 163.81864279491853, 14.2802166421108, 4, 4, 1, 1, 4, 3, 1, 0, 2, 4, 3, 1, 2, 2, 1, 474931.99349500594);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Silas', 'Fish', 'Goldfish', 'Spotted', 10.840119071949056, 'Male', 131.3894064740839, 160.69344208820482, 1, 2, 1, 2, 1, 1, 2, 1, 0, 0, 3, 3, 0, 4, 2, 291843.47699964524);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Theo', 'Fish', 'Green Swordtail', 'Black', 24.120679607508592, 'Male', 199.30610888003287, 147.38171783042043, 4, 2, 3, 0, 3, 0, 0, 4, 3, 4, 4, 2, 1, 4, 2, 419815.11314330605);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'Bobbafett', 'Fish', 'Siamese Fighting Fish', 'Black', 6.165998036555801, 'Female', 102.61591826569202, 170.00812928143955, 3, 3, 3, 1, 2, 4, 4, 1, 3, 0, 3, 4, 3, 0, 2, 40774.18545201992);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Claire', 'Fish', 'Green Swordtail', 'Spotted', 19.992200036729532, 'Female', 57.45142966395575, 41.080804755568536, 2, 3, 4, 2, 2, 4, 2, 3, 1, 1, 0, 3, 3, 4, 0, 493135.40124664607);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Theo', 'Hamster', 'Syrian', 'Black', 27.25598982214683, 'Female', 149.82822763389882, 112.02142046848147, 2, 4, 3, 0, 2, 2, 0, 4, 2, 3, 3, 4, 0, 1, 1, 166164.72203154385);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Jon Snow', 'Rabbit', 'Dwarf Hotot', 'Blue', 9.309841980688265, 'Male', 187.73691613355027, 174.567931489312, 4, 2, 2, 2, 3, 3, 3, 2, 2, 0, 1, 1, 2, 3, 0, 437569.4293962281);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'Hutch', 'Cat', 'Siamese', 'Gray', 14.779773066940752, 'Male', 82.62316154326032, 153.31391738298194, 1, 4, 1, 3, 2, 4, 2, 0, 2, 0, 0, 1, 3, 3, 2, 384028.1019112591);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Cessa', 'Rabbit', 'Florida White', 'Red', 26.006470689438974, 'Female', 110.08622947675768, 129.54112997620604, 1, 2, 1, 1, 0, 3, 0, 1, 0, 1, 4, 3, 2, 0, 2, 409784.3796722802);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Shane', 'Cat', 'Munchkin', 'Spotted', 26.02019299902613, 'Female', 157.16963704052577, 86.25891929763569, 3, 2, 0, 3, 1, 0, 1, 2, 1, 4, 1, 3, 0, 3, 2, 337071.3320818179);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Wolfie', 'Dog', 'Husky', 'Black', 3.216382974964446, 'Male', 169.31653877260487, 9.285718505501348, 3, 4, 0, 2, 4, 0, 0, 4, 0, 0, 3, 3, 1, 1, 2, 18974.198451075208);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Bianca', 'Horse', 'Paso Fino', 'Blue', 27.97620822663873, 'Female', 70.37874347770615, 169.85129504160196, 1, 1, 0, 4, 2, 3, 3, 3, 1, 1, 3, 1, 0, 4, 0, 132908.500899989);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Tibbs', 'Dog', 'Labrador', 'Blue', 12.772294619459188, 'Female', 100.72926249931841, 5.993068200874535, 1, 1, 3, 1, 2, 1, 4, 2, 0, 3, 4, 3, 1, 4, 0, 296842.96799225936);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Meadow', 'Rabbit', 'Dwarf Hotot', 'Red', 24.815540910570004, 'Female', 157.25466684078506, 148.05336001389963, 2, 3, 0, 1, 0, 0, 3, 2, 1, 2, 0, 3, 4, 4, 2, 306740.3979338708);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Zeppelin', 'Bird', 'African Grey Parrots', 'White', 5.446999258530523, 'Female', 106.41849826790597, 192.6151915703086, 0, 4, 4, 0, 4, 2, 0, 1, 0, 2, 2, 0, 1, 1, 1, 82761.60457810544);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Fig', 'Horse', 'Trakehner', 'Brown', 25.305451968486643, 'Female', 112.94704622803255, 40.10425913569383, 3, 4, 0, 3, 1, 2, 0, 4, 0, 2, 1, 4, 2, 0, 2, 286371.2686142937);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Burt', 'Bird', 'Cockatoos', 'Spotted', 18.045785462936227, 'Female', 11.456572294921976, 156.21212126671173, 1, 3, 3, 0, 0, 1, 1, 4, 1, 2, 1, 2, 1, 1, 0, 263356.3861327693);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'Onyx', 'Horse', 'Thoroughbred', 'Black', 6.442667939807084, 'Female', 171.5148152584338, 6.4219984671705, 2, 4, 3, 3, 0, 4, 2, 0, 1, 3, 1, 4, 1, 2, 0, 245804.6624454749);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Shadow', 'Cat', 'Munchkin', 'Gray', 20.257928208234855, 'Male', 43.33194291828427, 173.94782164691293, 3, 0, 1, 3, 4, 0, 2, 1, 2, 4, 2, 4, 3, 2, 0, 207629.37382647966);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Snooky', 'Hamster', 'Robo', 'Gray', 26.747659436572615, 'Female', 76.3505828465011, 96.03753518698707, 1, 2, 4, 1, 1, 3, 4, 1, 4, 1, 1, 4, 0, 1, 2, 393904.046219328);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'Fiona', 'Cat', 'Siamese', 'White', 29.79050603755096, 'Female', 21.796020696236035, 141.42658708278864, 1, 3, 1, 3, 1, 4, 1, 3, 2, 3, 2, 3, 3, 0, 2, 70108.93719176322);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Porche', 'Cat', 'Siamese', 'Brown', 8.596601560310628, 'Male', 125.4093259388296, 34.29600315873888, 2, 0, 1, 1, 2, 3, 4, 1, 3, 0, 3, 0, 4, 4, 1, 438314.4665986225);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Elwood', 'Cat', 'Munchkin', 'Yellow', 3.42944838819339, 'Male', 196.1063569684481, 179.521182262403, 2, 2, 3, 3, 4, 4, 4, 4, 1, 1, 1, 1, 1, 0, 1, 89391.70739142474);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Mira', 'Horse', 'Trakehner', 'White', 3.738390886290998, 'Male', 54.130747025870015, 155.46962355549718, 3, 1, 1, 4, 0, 1, 0, 1, 4, 0, 0, 0, 2, 3, 2, 237976.0957997488);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Olive', 'Bird', 'Cockatoos', 'Gray', 8.93173690002883, 'Male', 49.565182998877276, 59.57887597384006, 3, 2, 4, 3, 1, 2, 2, 0, 3, 3, 3, 3, 2, 0, 2, 355726.3823399862);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Brandy', 'Cat', 'Siamese', 'Green', 5.470958107823466, 'Female', 27.27042028268789, 111.01205295860608, 4, 2, 0, 1, 0, 1, 1, 4, 1, 2, 1, 4, 3, 1, 1, 244625.4025317664);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Milan', 'Cat', 'Persian', 'Brown', 21.20457999401464, 'Female', 118.47122811419462, 15.667753150716367, 2, 0, 2, 0, 1, 2, 2, 4, 4, 3, 0, 4, 1, 2, 0, 447372.11514531256);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Foxy', 'Bird', 'African Grey Parrots', 'Red', 19.65930612285138, 'Male', 59.44908218740336, 85.80999961751296, 3, 2, 0, 4, 2, 0, 3, 0, 3, 0, 3, 3, 3, 2, 2, 408303.0879914709);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Pazzo', 'Cat', 'Siamese', 'Blue', 18.86542951036158, 'Male', 139.11012968784618, 7.100078686836788, 4, 0, 2, 4, 3, 1, 4, 3, 4, 3, 1, 0, 2, 1, 0, 293316.731733228);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Kiefer', 'Cat', 'Persian', 'Red', 23.279449456329445, 'Male', 54.68841631210864, 111.54597100897118, 0, 4, 1, 2, 4, 3, 4, 3, 0, 1, 4, 1, 4, 0, 2, 489501.7504648591);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Audi', 'Fish', 'Goldfish', 'White', 20.679118721865656, 'Male', 184.7682281983133, 32.2195289083506, 0, 4, 0, 1, 1, 2, 0, 4, 2, 4, 1, 4, 4, 2, 2, 408380.5991403679);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Crosby', 'Bird', 'African Grey Parrots', 'Gray', 23.01367531732746, 'Male', 101.54779868550912, 49.396611479843735, 3, 4, 2, 1, 2, 4, 2, 0, 1, 1, 3, 4, 1, 4, 2, 143141.8217316139);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Tibbs', 'Rabbit', 'Dwarf Hotot', 'Brown', 19.538732776753033, 'Female', 22.192055020722293, 15.828368868069733, 0, 4, 0, 1, 1, 0, 3, 0, 1, 4, 1, 0, 1, 2, 2, 95362.67925507287);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Toast', 'Horse', 'Thoroughbred', 'Red', 13.363577789593627, 'Male', 145.39373369615151, 69.56834029554398, 1, 2, 2, 1, 2, 4, 1, 2, 4, 4, 2, 0, 1, 4, 1, 317803.66660538147);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'Balou', 'Bird', 'Budgerigars', 'Black', 27.109874285055035, 'Male', 175.93298872134716, 34.85508760241672, 1, 4, 1, 2, 2, 1, 4, 0, 2, 3, 2, 2, 4, 1, 2, 431039.4473777889);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Theo', 'Fish', 'Siamese Fighting Fish', 'Brown', 1.8438657620657248, 'Male', 185.65232540916676, 153.29785880321612, 1, 1, 2, 0, 3, 0, 0, 0, 0, 3, 0, 3, 4, 0, 2, 221852.87152496242);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Sophie', 'Horse', 'Thoroughbred', 'Gray', 28.638530941620235, 'Female', 10.448814548403718, 91.40413378269267, 1, 0, 2, 3, 2, 4, 1, 4, 2, 0, 4, 2, 1, 3, 0, 317511.5591950228);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Cupcake', 'Rabbit', 'Florida White', 'Black', 9.705878904918116, 'Female', 147.61330397516625, 58.6155752832314, 4, 0, 0, 1, 1, 4, 4, 0, 0, 4, 3, 4, 2, 1, 2, 108501.95357219322);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Malble', 'Cat', 'Persian', 'Spotted', 13.893967154619043, 'Male', 167.85461121601477, 37.56814884348981, 4, 1, 2, 1, 0, 3, 1, 3, 2, 0, 1, 2, 4, 2, 2, 295395.95734909753);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Midori', 'Dog', 'Husky', 'Spotted', 16.907690214911273, 'Male', 184.5382888861487, 166.64089442297623, 0, 0, 3, 2, 0, 3, 2, 4, 4, 3, 3, 1, 3, 0, 1, 84865.10751241734);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Timber', 'Dog', 'Labrador', 'Gray', 25.800314469653465, 'Male', 65.68747890115037, 191.69500687264457, 0, 0, 3, 1, 4, 2, 1, 0, 0, 2, 0, 0, 3, 4, 1, 100489.26502590846);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocky', '970-534-8315', '9 54th Ave, Cornwall, ON, Canada', 'Rocky_Sunny@gmail.com', 2, 1, 3, 46.63037477869287, 126223.28522559535, 50);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Spark', 'Cat', 'Munchkin', 'Yellow', 18.418504679331935, 'Female', 11.246718486530042, 198.39192052264266, 3, 1, 0, 3, 4, 3, 3, 0, 1, 4, 0, 1, 1, 3, 0, 426587.84540337016);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Holly', '352-760-3963', '25 32nd St, Montreal, ON, Canada', 'Holly_Pazzo@gmail.com', 1, 3, 1, 19.76966705705941, 245155.43454114912, 51);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'Fiona', 'Bird', 'Budgerigars', 'Black', 9.222877387996373, 'Male', 134.9480796415806, 170.06449920579743, 3, 2, 2, 4, 2, 4, 3, 1, 3, 2, 0, 4, 1, 4, 0, 185250.25514702892);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Wilbur', '719-360-5656', '38 32nd Ave, Toronto, ON, Canada', 'Wilbur_Merlot@gmail.com', 3, 2, 4, 23.861092935849193, 169269.37693353355, 52);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Jenna', 'Horse', 'Barb', 'Green', 5.034423945132279, 'Female', 96.95840005502612, 38.061290906987146, 3, 1, 4, 2, 2, 4, 3, 4, 4, 2, 4, 3, 3, 2, 2, 65433.985534703665);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Muggles', '964-380-851', '11 Woodridge Cres, Montreal, ON, Canada', 'Muggles_Mylo@gmail.com', 2, 1, 3, 46.583495892797835, 208252.2850840917, 53);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Pablo', 'Dog', 'Husky', 'Black', 25.660774848379077, 'Male', 142.77217397079696, 44.18881008974629, 1, 4, 4, 1, 2, 4, 1, 1, 3, 4, 1, 1, 4, 4, 0, 69878.19273908292);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Parker', '132-901-9403', '22 32nd Ave, Ottawa, ON, Canada', 'Parker_Samsung@gmail.com', 4, 3, 2, 79.87948330852493, 324127.2040134362, 54);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Owen', 'Cat', 'Scottish Fold', 'Spotted', 6.58185666355815, 'Female', 116.53282845482917, 51.78622474858061, 4, 2, 3, 2, 0, 0, 1, 3, 4, 3, 4, 4, 1, 4, 2, 51369.28088401795);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Luca', '492-260-705', '35 Bank St, Ottawa, ON, Canada', 'Luca_Paisley@gmail.com', 2, 3, 3, 20.07360333913121, 359438.75489199045, 55);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Rocco', 'Hamster', 'Winter White', 'Yellow', 8.366549036809488, 'Male', 98.71169566151472, 89.67208273744632, 2, 2, 4, 3, 4, 1, 1, 4, 1, 1, 4, 3, 0, 2, 2, 196031.6901081622);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bailey', '430-749-4239', '5 Woodridge Ave, Toronto, ON, Canada', 'Bailey_Koby@gmail.com', 1, 1, 1, 67.54163959701212, 397197.61543523264, 56);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'Cisco', 'Bird', 'Cockatoos', 'Yellow', 20.09323684532006, 'Male', 145.3722169825086, 66.51539763364639, 0, 2, 3, 0, 4, 1, 4, 4, 2, 2, 2, 3, 3, 4, 1, 124053.1003376051);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pixie', '576-425-1060', '24 Paterson Cres, Nepean, ON, Canada', 'Pixie_Tonka@gmail.com', 4, 4, 4, 51.27138984695923, 347772.9971014998, 57);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Sunny', 'Horse', 'Barb', 'Yellow', 17.9097720586804, 'Male', 33.271955580802654, 48.681111033111215, 4, 2, 3, 2, 2, 1, 2, 1, 4, 4, 2, 0, 2, 0, 1, 321021.1974800268);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mia', '853-754-1956', '13 Woodridge St, Cornwall, ON, Canada', 'Mia_Barney@gmail.com', 2, 4, 2, 61.57956834936852, 338263.18259452056, 58);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Daphne', 'Hamster', 'Robo', 'Gray', 3.3665760661217106, 'Female', 12.987035711466483, 193.96308808816482, 1, 4, 2, 1, 0, 4, 2, 3, 3, 3, 3, 3, 4, 3, 1, 337114.0159639713);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Peaches', '633-989-5291', '4 Bank Cres, Cornwall, ON, Canada', 'Peaches_Moby@gmail.com', 2, 0, 1, 43.24990679686109, 495153.06241094583, 59);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (60, 'Pesci', 'Cat', 'Munchkin', 'Green', 24.315542394687682, 'Male', 128.73809008063733, 166.60346766898775, 2, 3, 3, 4, 4, 0, 2, 3, 1, 2, 1, 4, 2, 4, 2, 487744.20185097517);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tibbs', '217-136-7655', '7 Paterson Ave, Nepean, ON, Canada', 'Tibbs_Chevy@gmail.com', 4, 0, 4, 24.56177302187002, 290137.87289467256, 60);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (61, 'Buddy', 'Fish', 'Siamese Fighting Fish', 'Black', 21.885974050507258, 'Male', 153.90093961543874, 155.2906506805899, 1, 3, 0, 0, 3, 1, 2, 3, 1, 3, 0, 0, 2, 4, 0, 453014.8923559649);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bootsie', '802-694-2344', '5 54th Rd, Cornwall, ON, Canada', 'Bootsie_Lilypie@gmail.com', 0, 2, 4, 32.05027885284345, 85718.32096485746, 61);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (62, 'Niana', 'Cat', 'Munchkin', 'Red', 25.353736607774888, 'Male', 7.194518795893691, 125.27567111860759, 1, 4, 2, 0, 2, 0, 0, 2, 4, 4, 2, 2, 4, 3, 0, 336757.60609355796);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Elton', '830-178-1503', '39 Queen Cres, Toronto, ON, Canada', 'Elton_Chevy@gmail.com', 4, 4, 4, 74.45518448535523, 431764.8634819385, 62);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (63, 'Tango', 'Horse', 'Barb', 'Brown', 8.199193965163595, 'Female', 91.1511866812495, 177.81287083944363, 3, 4, 4, 3, 3, 3, 2, 1, 2, 0, 1, 1, 4, 0, 2, 28107.724266757854);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Quattro', '981-439-4502', '50 Woodridge St, Toronto, ON, Canada', 'Quattro_Maya@gmail.com', 0, 4, 2, 71.43882552266061, 493577.3809321827, 63);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (64, 'Muggles', 'Hamster', 'Winter White', 'Green', 5.429379371255068, 'Female', 122.48582653719997, 170.28635672302266, 0, 2, 4, 3, 4, 0, 0, 1, 4, 2, 0, 3, 0, 4, 2, 389105.2243285878);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Koby', '314-420-1180', '40 Queen Cres, Ottawa, ON, Canada', 'Koby_Moby@gmail.com', 1, 0, 1, 38.213838882878946, 325168.35872710106, 64);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (65, 'Scotty', 'Fish', 'Goldfish', 'Gray', 8.182559065638443, 'Male', 149.1952878581311, 172.1875584981398, 3, 3, 2, 3, 4, 4, 3, 4, 1, 0, 0, 0, 1, 4, 1, 49609.964029052564);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Owen', '681-408-9582', '8 5th Cres, Toronto, ON, Canada', 'Owen_Shadow@gmail.com', 0, 1, 3, 29.96087997178881, 403060.47257028974, 65);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (66, 'Indira', 'Cat', 'Munchkin', 'Green', 15.682979936576537, 'Female', 173.95583970614598, 79.70559053967702, 3, 4, 2, 1, 4, 0, 2, 1, 3, 3, 4, 4, 0, 1, 2, 327130.66852073366);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kalua', '876-209-5847', '43 Paterson Rd, Nepean, ON, Canada', 'Kalua_Sansa@gmail.com', 4, 0, 4, 55.0308851129062, 334174.5923079652, 66);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (67, 'Logan', 'Dog', 'Labrador', 'Brown', 11.75166890017271, 'Male', 91.42204820087419, 52.634628813935244, 0, 1, 4, 1, 2, 3, 4, 1, 2, 3, 4, 0, 4, 4, 0, 487303.7784836442);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Shaggy', '339-598-8247', '1 Queen Ave, Cornwall, ON, Canada', 'Shaggy_Delilah@gmail.com', 3, 0, 0, 32.46106334637463, 417583.30632479716, 67);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (68, 'Connor', 'Hamster', 'Robo', 'White', 26.32648005228469, 'Female', 37.73200884250037, 194.54926479336373, 4, 1, 2, 3, 4, 2, 2, 0, 1, 1, 0, 2, 4, 3, 2, 180626.75556217038);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Lexi', '149-109-8194', '33 54th Ave, Ottawa, ON, Canada', 'Lexi_Greystoke@gmail.com', 4, 4, 2, 73.44933315375859, 108278.72160709249, 68);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (69, 'Delilah', 'Rabbit', 'Dwarf Hotot', 'Spotted', 2.2974455907527043, 'Female', 49.856009636850814, 73.74218635968616, 0, 3, 4, 2, 0, 2, 3, 0, 4, 1, 3, 0, 1, 2, 2, 383336.8188975563);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sunny', '772-156-6940', '29 5th Ave, Nepean, ON, Canada', 'Sunny_Sadie@gmail.com', 3, 1, 2, 40.60529523012569, 461875.51213910244, 69);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (70, 'Calvin', 'Dog', 'Husky', 'White', 24.147027428309883, 'Male', 181.57952479787488, 73.76247659907672, 1, 3, 2, 4, 1, 3, 0, 3, 1, 1, 1, 2, 3, 1, 0, 189230.5615432853);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Indira', '980-822-7195', '26 5th Ave, Ottawa, ON, Canada', 'Indira_Koby@gmail.com', 0, 2, 2, 76.42772510972935, 215998.17705892335, 70);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (71, 'Linus', 'Dog', 'Husky', 'Blue', 22.854402392906607, 'Male', 76.88539443222449, 183.46068605189208, 2, 3, 4, 3, 1, 3, 4, 2, 1, 1, 4, 0, 4, 4, 0, 384803.1424143723);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Donna', '790-359-642', '46 Paterson Ave, Nepean, ON, Canada', 'Donna_Logan@gmail.com', 0, 1, 2, 60.70118085823459, 246478.68207453573, 71);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (72, 'Winnie', 'Horse', 'Thoroughbred', 'Yellow', 13.406630663957504, 'Male', 187.46255701677052, 35.78954484753896, 3, 4, 2, 4, 0, 4, 1, 2, 0, 3, 0, 4, 3, 4, 2, 431152.34367131843);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Dallas', '493-589-2833', '47 Woodridge Cres, Cornwall, ON, Canada', 'Dallas_Lola@gmail.com', 0, 3, 4, 25.504011585859054, 385592.0772088127, 72);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (73, 'Cleopatra', 'Bird', 'Budgerigars', 'Red', 4.066153381952175, 'Female', 187.05429438881887, 45.04867597217702, 4, 2, 4, 2, 0, 4, 2, 2, 4, 2, 0, 4, 0, 4, 2, 335377.0504015575);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Olive', '377-580-2347', '29 32nd Rd, Toronto, ON, Canada', 'Olive_Jade@gmail.com', 0, 1, 3, 57.734402666919586, 209272.996497821, 73);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (74, 'Nell', 'Dog', 'Husky', 'Spotted', 17.65854838662602, 'Female', 29.310566064103785, 78.15470084638434, 4, 1, 0, 3, 1, 0, 3, 4, 3, 4, 1, 0, 3, 3, 2, 65617.7783129645);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tucke', '377-353-6492', '42 Paterson Ave, Nepean, ON, Canada', 'Tucke_RobinHood@gmail.com', 0, 1, 4, 44.80582883915139, 84620.49132909533, 74);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (75, 'Vegas', 'Bird', 'Cockatiels', 'Yellow', 7.820158250306993, 'Female', 121.33945793831062, 133.58113166912992, 2, 1, 4, 0, 3, 0, 2, 0, 3, 2, 0, 1, 0, 3, 1, 479627.57124498056);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bella', '834-840-2378', '23 Paterson Cres, Nepean, ON, Canada', 'Bella_Niana@gmail.com', 2, 1, 3, 35.84100757941178, 178458.31089890288, 75);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (76, 'MrBig', 'Horse', 'Barb', 'Gray', 21.62602601150587, 'Female', 184.81557675133791, 175.74075857144948, 2, 1, 3, 1, 3, 2, 1, 0, 1, 0, 4, 3, 1, 4, 2, 404233.96385235304);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paisley', '693-103-9805', '44 54th Rd, Montreal, ON, Canada', 'Paisley_Dulus@gmail.com', 0, 2, 2, 47.49127420505485, 330778.9304437312, 76);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (77, 'Barclay', 'Hamster', 'Winter White', 'Blue', 10.92624306780784, 'Female', 158.43911575120987, 50.14627998732811, 1, 1, 1, 2, 0, 2, 2, 0, 4, 4, 0, 2, 0, 4, 2, 400412.6285393839);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Nate', '110-217-6412', '44 Queen Ave, Toronto, ON, Canada', 'Nate_Cisco@gmail.com', 1, 3, 4, 70.4307150388356, 245736.8953389036, 77);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (78, 'Koby', 'Fish', 'Green Swordtail', 'Spotted', 18.98253772686254, 'Female', 185.27127424922554, 91.81813875316293, 1, 4, 0, 4, 4, 2, 1, 3, 1, 0, 2, 3, 4, 2, 2, 98835.94544457635);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Margo', '150-790-9178', '49 Woodridge Cres, Ottawa, ON, Canada', 'Margo_Bono@gmail.com', 2, 3, 0, 22.852184908130287, 108998.00732500268, 78);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (79, 'Landon', 'Fish', 'Siamese Fighting Fish', 'Green', 28.9955925138214, 'Female', 183.52755419106367, 124.60427563937176, 0, 0, 2, 2, 4, 2, 4, 4, 4, 1, 1, 2, 4, 2, 1, 238560.21791519024);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Willow', '442-684-2573', '19 5th St, Cornwall, ON, Canada', 'Willow_Paddington@gmail.com', 2, 3, 0, 52.25848969349955, 296462.0915195834, 79);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (80, 'Phoenix', 'Rabbit', 'Britannia Petite', 'Yellow', 26.83780683233873, 'Male', 33.827815714570875, 102.52659752738597, 4, 1, 4, 0, 0, 3, 1, 1, 3, 1, 4, 4, 0, 2, 2, 61461.80883158651);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sunny', '425-398-3065', '23 Queen Cres, Toronto, ON, Canada', 'Sunny_Molly@gmail.com', 1, 1, 4, 54.50573504145951, 56996.53411348107, 80);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (81, 'Hermione', 'Horse', 'Thoroughbred', 'Black', 14.282812137996972, 'Female', 31.19820723317655, 27.853418016207627, 2, 4, 1, 1, 4, 0, 3, 0, 0, 3, 2, 0, 2, 3, 2, 145715.97025214045);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paul', '212-794-5692', '30 54th Cres, Toronto, ON, Canada', 'Paul_Zeke@gmail.com', 4, 2, 1, 72.51257885418732, 90632.02572041636, 81);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (82, 'RobinHood', 'Fish', 'Goldfish', 'Green', 2.3343893995747287, 'Female', 32.66087075125908, 135.87348079955743, 1, 2, 1, 2, 2, 2, 4, 4, 0, 4, 0, 1, 3, 4, 2, 345176.7187042835);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Max', '634-368-7992', '35 Bank Cres, Ottawa, ON, Canada', 'Max_Luke@gmail.com', 1, 3, 4, 64.01750728071593, 139321.61770805297, 82);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (83, 'Harry', 'Fish', 'Green Swordtail', 'Gray', 20.236251864203506, 'Male', 115.44690924036266, 193.61686093891993, 2, 1, 3, 2, 0, 0, 2, 1, 0, 3, 1, 3, 1, 2, 2, 317382.80232361355);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Carter', '757-967-9477', '27 32nd Ave, Toronto, ON, Canada', 'Carter_Scotty@gmail.com', 0, 1, 4, 66.53799880699532, 355109.4440603368, 83);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (84, 'Paul', 'Bird', 'Cockatiels', 'Gray', 20.23586941776293, 'Female', 78.24578927372833, 44.06436085612188, 4, 1, 2, 1, 3, 1, 1, 4, 1, 0, 1, 3, 0, 2, 1, 288133.532072196);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tonka', '503-150-1539', '48 54th Ave, Nepean, ON, Canada', 'Tonka_Monkey@gmail.com', 1, 4, 3, 21.804487454347857, 104790.61781851845, 84);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (85, 'Samsung', 'Horse', 'Thoroughbred', 'Blue', 28.62920016796409, 'Male', 59.03799128286073, 121.2447965872049, 4, 2, 2, 1, 2, 2, 2, 0, 1, 3, 1, 2, 3, 0, 0, 141633.99625078373);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Porche', '677-283-4378', '8 Queen St, Ottawa, ON, Canada', 'Porche_Malble@gmail.com', 4, 2, 0, 36.0335409080942, 474029.4628454135, 85);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (86, 'Mooshie', 'Cat', 'Ragdoll', 'Brown', 12.438748823877562, 'Male', 18.008217546290897, 197.89867421141054, 3, 2, 3, 4, 2, 4, 3, 1, 1, 0, 2, 1, 0, 4, 1, 384185.8942319927);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paul', '430-744-6587', '40 Bank Ave, Cornwall, ON, Canada', 'Paul_Bobbafett@gmail.com', 4, 0, 2, 68.16297115006081, 396465.6981163382, 86);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (87, 'Alvin', 'Rabbit', 'American Fuzzy Lop', 'Brown', 20.229522748631695, 'Male', 68.40514451864024, 105.67892027031719, 2, 4, 4, 0, 2, 0, 4, 4, 0, 2, 1, 1, 3, 3, 2, 467964.46893116133);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kai', '360-247-7735', '42 Woodridge Rd, Ottawa, ON, Canada', 'Kai_Paris@gmail.com', 4, 2, 4, 38.18845326845212, 188843.68908432938, 87);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (88, 'Mooshie', 'Horse', 'Paso Fino', 'Green', 22.161595035770198, 'Female', 190.45421525682568, 5.979843133073777, 0, 1, 3, 3, 1, 2, 3, 4, 3, 4, 1, 2, 3, 2, 2, 77127.75232847845);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Picasso', '534-123-3103', '33 54th Cres, Cornwall, ON, Canada', 'Picasso_Jack@gmail.com', 1, 3, 1, 76.56814954422231, 327519.7757540762, 88);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (89, 'Lola', 'Horse', 'Trakehner', 'White', 2.9192925957757576, 'Male', 16.87421389675037, 6.782647988024771, 2, 1, 1, 3, 3, 1, 4, 1, 2, 1, 0, 4, 4, 3, 0, 245256.99606905787);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Winnie', '720-842-6158', '21 Bank Ave, Montreal, ON, Canada', 'Winnie_Snoopy@gmail.com', 4, 3, 1, 33.32653521027031, 447377.10339429043, 89);
