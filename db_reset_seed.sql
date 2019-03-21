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
    (0, 'Nico', 'Horse', 'Barb', 'Gray', 12.215599801822695, 'Male', 79.87318357813821, 61.81353603433089, 1, 1, 1, 1, 1, 2, 3, 1, 1, 1, 0, 2, 4, 3, 1, 482257.7459729325);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Carter', 'Bird', 'Cockatoos', 'Red', 12.721993654452774, 'Female', 184.85627909368986, 166.34684628604964, 2, 4, 4, 0, 1, 1, 2, 2, 0, 2, 0, 3, 0, 3, 0, 397866.5358970541);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Elton', 'Cat', 'Siamese', 'Yellow', 6.063808802429932, 'Female', 63.99814140187374, 180.4126095191628, 0, 4, 3, 0, 0, 3, 0, 0, 1, 4, 3, 1, 0, 4, 2, 107716.26496148384);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Joy', 'Dog', 'Husky', 'Yellow', 27.70783231673743, 'Female', 197.62637710391724, 104.25808090054828, 0, 4, 1, 2, 0, 4, 0, 1, 0, 3, 1, 0, 2, 2, 0, 120354.74916815975);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Syrah', 'Cat', 'Scottish Fold', 'Gray', 18.729856963205027, 'Male', 153.01148494087275, 83.57619458689013, 4, 4, 0, 4, 1, 4, 2, 2, 2, 4, 3, 2, 4, 3, 0, 420663.3769825257);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Greystoke', 'Horse', 'Trakehner', 'Blue', 1.027737476304602, 'Male', 129.2524556978315, 171.7997849012732, 0, 0, 0, 1, 3, 2, 4, 4, 3, 3, 4, 4, 1, 0, 1, 471118.6065837357);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Winnie', 'Rabbit', 'Dutch', 'Red', 23.440229018933465, 'Female', 179.7939712034382, 193.22988295345579, 1, 1, 4, 2, 3, 0, 0, 1, 1, 4, 3, 0, 2, 2, 2, 323857.540926586);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'China', 'Horse', 'Trakehner', 'Brown', 10.946151753295261, 'Female', 114.61975178811389, 76.58150658765418, 4, 3, 1, 2, 0, 2, 1, 1, 4, 2, 3, 3, 4, 4, 2, 143821.5375698758);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Stitch', 'Hamster', 'Robo', 'Green', 7.529093523489838, 'Female', 36.00687228276515, 7.962362227280987, 1, 4, 2, 1, 0, 0, 1, 3, 4, 4, 4, 0, 4, 4, 2, 306736.3289799732);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Buffy', 'Cat', 'Siamese', 'Red', 11.409982002683668, 'Female', 126.97627524270675, 18.983752738408764, 4, 0, 1, 2, 2, 2, 3, 1, 3, 4, 0, 1, 2, 0, 2, 470935.26023767557);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Faya', 'Hamster', 'Chinese', 'Gray', 24.777728225324058, 'Female', 100.89429445699282, 127.2565490415795, 3, 4, 4, 2, 1, 3, 0, 4, 4, 0, 3, 0, 0, 3, 1, 87556.3725094954);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Paddington', 'Cat', 'Munchkin', 'Red', 22.514062203740487, 'Female', 30.22955520966798, 168.1806799713271, 2, 3, 0, 0, 2, 2, 0, 0, 1, 1, 1, 4, 0, 1, 1, 208705.87218519658);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Mia', 'Rabbit', 'Florida White', 'Gray', 29.409869968921235, 'Male', 119.80610786371618, 140.4529846649529, 2, 3, 3, 0, 3, 3, 0, 1, 4, 4, 3, 0, 1, 1, 2, 142015.9149796127);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'Emma', 'Fish', 'Siamese Fighting Fish', 'Red', 14.244136390023328, 'Male', 58.50383999287797, 182.48208453851086, 1, 1, 1, 0, 1, 2, 0, 0, 1, 0, 3, 1, 1, 3, 1, 362818.16418516124);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Chloe Alice', 'Rabbit', 'Britannia Petite', 'Gray', 23.90041644894269, 'Female', 137.80249095257113, 10.891853909435078, 4, 3, 2, 0, 3, 1, 2, 4, 3, 3, 0, 3, 1, 4, 1, 356852.25887854956);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Winnie', 'Rabbit', 'Florida White', 'Blue', 14.223401843202033, 'Male', 74.83259799735124, 167.0380976573982, 3, 3, 2, 3, 2, 1, 0, 3, 4, 4, 1, 1, 0, 3, 1, 461442.8521386185);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Kiefer', 'Hamster', 'Winter White', 'Green', 22.97763221368589, 'Female', 147.53803060922536, 53.89938694212483, 4, 1, 3, 2, 4, 0, 1, 1, 4, 2, 1, 3, 2, 2, 2, 249751.22812547392);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'Acorn', 'Cat', 'Scottish Fold', 'Yellow', 19.064033358865924, 'Female', 14.706091142517016, 124.89116601247851, 4, 4, 1, 1, 4, 0, 3, 3, 4, 3, 3, 1, 1, 0, 2, 330379.6845662721);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Arya', 'Rabbit', 'Dwarf Hotot', 'Brown', 29.04682800361215, 'Female', 168.43984679826937, 110.2465029394396, 4, 0, 0, 0, 0, 1, 0, 1, 4, 4, 4, 0, 0, 4, 0, 441850.0314671535);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Kaya', 'Rabbit', 'American Fuzzy Lop', 'White', 7.269718545910649, 'Female', 40.33882865392385, 60.84011525062008, 0, 2, 4, 0, 4, 3, 4, 4, 4, 0, 3, 4, 0, 1, 2, 2915.171529297066);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Monet', 'Rabbit', 'American Fuzzy Lop', 'Green', 24.467930874647795, 'Male', 123.52206822551433, 189.98474380749485, 4, 0, 1, 4, 2, 0, 4, 2, 4, 1, 3, 3, 2, 4, 0, 214428.33115360016);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Foxy', 'Hamster', 'Robo', 'Red', 12.821542861710752, 'Male', 127.5227939679524, 103.65646868705961, 1, 4, 2, 0, 1, 3, 0, 3, 2, 0, 0, 2, 2, 4, 0, 489026.6388957855);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Mulder', 'Bird', 'Cockatiels', 'Red', 15.085238802537324, 'Female', 150.9701644087547, 65.11478340848286, 3, 4, 4, 3, 3, 3, 1, 4, 3, 3, 1, 4, 1, 2, 0, 222763.83649254474);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Otis', 'Cat', 'Siamese', 'Blue', 18.265735498117106, 'Male', 166.48389723338886, 80.66581514539423, 1, 0, 2, 2, 2, 4, 0, 3, 3, 4, 0, 2, 1, 3, 2, 72022.38513935645);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Graysen', 'Rabbit', 'Britannia Petite', 'Black', 8.744483367457923, 'Male', 113.88839105211176, 153.6482935203341, 2, 3, 2, 3, 3, 2, 2, 1, 1, 3, 0, 3, 2, 0, 0, 395863.9563479788);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Bagel', 'Dog', 'Labrador', 'Green', 10.385702518253378, 'Male', 56.53444099161633, 177.54071264280998, 1, 0, 0, 3, 3, 3, 0, 2, 1, 0, 2, 0, 3, 2, 2, 55041.98892690807);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Luke', 'Horse', 'Trakehner', 'Black', 4.913469846667641, 'Female', 6.719388868319684, 175.0982107802183, 3, 1, 0, 1, 0, 4, 1, 4, 3, 1, 2, 4, 4, 0, 2, 156650.79883520553);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'MrBig', 'Cat', 'Siamese', 'Spotted', 12.458248273260123, 'Female', 168.94259118886984, 193.2052870808799, 3, 2, 3, 3, 0, 4, 2, 3, 1, 2, 4, 2, 3, 2, 2, 129524.20241659966);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Samsung', 'Rabbit', 'Dwarf Hotot', 'Black', 17.545510062683885, 'Female', 33.932276392330834, 27.812423945294526, 4, 3, 4, 1, 0, 2, 3, 1, 0, 2, 1, 0, 4, 1, 2, 148205.44464716397);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Peanut', 'Rabbit', 'Florida White', 'Spotted', 27.773008843576434, 'Female', 15.779424522987023, 14.252453032218916, 0, 3, 0, 1, 1, 2, 2, 0, 0, 1, 0, 0, 4, 1, 0, 483125.63979215274);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'Zelda', 'Hamster', 'Robo', 'Red', 19.65498846838789, 'Male', 96.72314745434863, 169.42510530407145, 3, 1, 1, 1, 4, 2, 1, 4, 0, 1, 3, 4, 0, 2, 0, 436455.545662671);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Malble', 'Horse', 'Barb', 'Black', 27.475545393587872, 'Male', 189.6308610614758, 45.100315651812124, 4, 1, 4, 2, 4, 4, 4, 4, 1, 0, 3, 1, 0, 2, 1, 214282.85529897356);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Shane', 'Cat', 'Ragdoll', 'Blue', 21.70728855636238, 'Female', 176.69605117171275, 18.907064063936346, 4, 2, 3, 3, 1, 2, 2, 3, 0, 2, 3, 4, 0, 2, 2, 416515.82989810547);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Dulus', 'Bird', 'Cockatoos', 'White', 13.846068603909021, 'Male', 30.151616251554803, 188.78949574403853, 0, 4, 2, 1, 1, 0, 0, 2, 4, 3, 1, 1, 2, 4, 0, 55546.80062283981);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Bob', 'Fish', 'Green Swordtail', 'Red', 27.438598180970743, 'Female', 74.03133841355465, 103.27136719936765, 3, 4, 3, 2, 1, 1, 3, 0, 4, 0, 2, 1, 0, 2, 0, 10455.697328370907);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Chevy', 'Dog', 'Labrador', 'White', 3.93505133991009, 'Male', 186.2621786604077, 173.91435718465704, 3, 4, 2, 0, 0, 1, 1, 2, 0, 3, 2, 0, 0, 1, 1, 189179.42054749755);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Pumba', 'Bird', 'Cockatoos', 'White', 2.956978494604801, 'Female', 31.762308522359465, 170.41683655323098, 3, 1, 0, 4, 3, 1, 4, 4, 4, 3, 3, 1, 1, 1, 0, 275328.5171069052);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Paul', 'Cat', 'Scottish Fold', 'Yellow', 18.883686631986453, 'Female', 64.66884031620367, 174.73139827277944, 2, 1, 3, 1, 4, 1, 2, 0, 1, 4, 0, 3, 1, 0, 1, 178193.13464469975);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Skyler', 'Hamster', 'Chinese', 'Yellow', 12.90528041969441, 'Female', 166.23988133868048, 181.83164689733107, 1, 0, 1, 0, 1, 2, 1, 1, 2, 4, 1, 4, 2, 4, 1, 450506.82676786283);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Fig', 'Dog', 'Husky', 'Brown', 18.406800871114612, 'Male', 61.44668365184561, 51.153655855670074, 0, 3, 1, 2, 3, 2, 3, 1, 1, 1, 4, 0, 3, 4, 1, 35425.92741992161);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Claire', 'Hamster', 'Chinese', 'Brown', 4.5464932685822355, 'Female', 175.02748545355752, 193.06897859439712, 4, 1, 4, 0, 4, 2, 3, 2, 1, 3, 3, 2, 3, 1, 2, 487415.998718532);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Doc', 'Dog', 'Labrador', 'Spotted', 1.9367659849346872, 'Male', 159.39157421646925, 124.33377634383594, 4, 2, 2, 2, 4, 0, 2, 4, 4, 3, 0, 1, 1, 0, 2, 3016.197366666637);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Mulder', 'Horse', 'Trakehner', 'Black', 20.16785750399276, 'Male', 190.05285487426727, 13.742189904800046, 1, 3, 2, 4, 1, 4, 4, 1, 1, 1, 3, 1, 0, 2, 0, 247909.63018472513);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Goofy', 'Cat', 'Munchkin', 'Red', 16.754065339189832, 'Male', 58.879327808883495, 126.91814720190973, 0, 1, 2, 2, 4, 1, 3, 3, 4, 4, 2, 2, 0, 4, 0, 290091.7368077992);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'Max', 'Bird', 'Cockatoos', 'Black', 2.8705634700063514, 'Female', 40.0855123742348, 8.103603643034404, 0, 4, 3, 4, 0, 2, 2, 2, 4, 3, 4, 4, 4, 2, 0, 322526.60795386415);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Tink', 'Rabbit', 'American Fuzzy Lop', 'Red', 7.5352590608431225, 'Male', 14.545742751756459, 161.24665642896016, 4, 3, 4, 4, 0, 4, 1, 1, 1, 0, 4, 3, 1, 0, 0, 264386.42147687747);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Lilypie', 'Dog', 'Labrador', 'Green', 27.963979321421384, 'Male', 99.97088644025274, 145.32779890081403, 4, 1, 2, 3, 3, 1, 4, 0, 2, 1, 2, 2, 3, 4, 0, 217397.89015601683);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Rocky', 'Fish', 'Siamese Fighting Fish', 'Spotted', 6.027045026025502, 'Male', 91.68368841979364, 72.19211292336638, 2, 2, 2, 4, 3, 2, 2, 4, 4, 4, 1, 0, 1, 0, 1, 378302.5777848456);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Paddington', 'Hamster', 'Winter White', 'White', 29.652815266542735, 'Male', 56.05253929630013, 124.23316869652488, 2, 1, 3, 2, 0, 0, 3, 3, 0, 3, 0, 3, 1, 1, 0, 260702.33682420044);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Asia', 'Cat', 'Munchkin', 'Red', 2.8109185709745677, 'Female', 146.8191263759947, 62.90717522714562, 4, 3, 0, 0, 1, 3, 0, 3, 2, 1, 0, 0, 3, 4, 0, 275119.58014810516);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Nate', 'Fish', 'Goldfish', 'Green', 19.702684578641172, 'Male', 133.41722173323973, 76.90470391156566, 0, 0, 3, 0, 0, 1, 0, 1, 3, 2, 2, 2, 4, 4, 1, 367938.6143546967);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mitzi', '190-746-5205', '50 5th Ave, Ottawa, ON, Canada', 'mitzi_summer@gmail.com', 3, 0, 3, 63.944095415165485, 409456.1585545798, 50);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Larissa', 'Dog', 'German Shepard', 'Spotted', 18.618457486768364, 'Female', 157.80076887179254, 112.98208006326826, 2, 3, 4, 4, 3, 0, 1, 3, 0, 0, 3, 1, 2, 4, 2, 358114.535884581);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hunter', '755-672-9561', '15 54th St, Montreal, ON, Canada', 'hunter_ed@gmail.com', 2, 4, 3, 51.20641450598712, 130952.61246235458, 51);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'Tonka', 'Bird', 'Budgerigars', 'Spotted', 19.172659321822202, 'Female', 22.611526789825685, 117.5621015173155, 4, 1, 0, 1, 1, 0, 3, 3, 3, 2, 0, 2, 2, 0, 2, 57448.49022693084);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocky', '772-923-6062', '26 5th Ave, Toronto, ON, Canada', 'rocky_kassie@gmail.com', 1, 4, 1, 52.294458010189466, 463344.57532128866, 52);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Bronco', 'Bird', 'Budgerigars', 'Yellow', 21.992045593857217, 'Male', 164.74935017555242, 97.53577440543125, 2, 4, 2, 2, 4, 0, 1, 4, 4, 2, 2, 4, 0, 2, 1, 64365.91167398021);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Emma', '721-765-8262', '48 Bank St, Montreal, ON, Canada', 'emma_rocky@gmail.com', 1, 0, 4, 20.521800399964757, 347971.6203679893, 53);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Lilbit', 'Bird', 'Cockatiels', 'Spotted', 17.654241579450296, 'Female', 91.45739481473439, 181.52196762418143, 1, 3, 2, 2, 1, 1, 4, 3, 1, 3, 1, 4, 1, 1, 2, 46417.51820518291);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Zara', '758-851-3465', '42 Paterson Cres, Nepean, ON, Canada', 'zara_nanda@gmail.com', 0, 3, 1, 19.334794144347804, 355444.5934229025, 54);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Milan', 'Dog', 'German Shepard', 'Gray', 22.9998464323859, 'Female', 129.0069618048372, 121.59102924737547, 0, 4, 2, 3, 2, 3, 2, 4, 0, 2, 3, 4, 1, 3, 1, 320022.53789831715);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Onyx', '820-183-4725', '48 Paterson Cres, Toronto, ON, Canada', 'onyx_zelda@gmail.com', 2, 0, 1, 49.289400967383045, 341552.5439472943, 55);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Chevy', 'Rabbit', 'American Fuzzy Lop', 'White', 19.284930852460253, 'Female', 22.350034622420395, 48.89303699405438, 0, 1, 1, 0, 0, 1, 3, 1, 3, 1, 1, 0, 2, 1, 2, 349474.91411824775);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cessa', '656-504-9480', '31 54th Rd, Montreal, ON, Canada', 'cessa_dutch@gmail.com', 3, 4, 3, 77.73609002133966, 466659.9854632355, 56);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'Pearl', 'Horse', 'Barb', 'Brown', 5.564334447779507, 'Male', 27.09027522383644, 39.48772671352307, 0, 2, 2, 2, 2, 4, 0, 2, 4, 4, 2, 0, 1, 2, 1, 305304.28773653734);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Timber', '518-665-5835', '20 Woodridge Cres, Cornwall, ON, Canada', 'timber_greystoke@gmail.com', 3, 2, 3, 42.20608219721044, 326786.82951119915, 57);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Spot', 'Hamster', 'Winter White', 'Yellow', 16.34517530760132, 'Female', 89.1911519021652, 158.1338346862278, 4, 2, 1, 4, 3, 0, 0, 3, 0, 3, 0, 0, 1, 2, 2, 8196.240324038263);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Willow', '296-743-6231', '17 Queen Ave, Toronto, ON, Canada', 'willow_quattro@gmail.com', 0, 1, 2, 32.15820376602455, 364428.5094415792, 58);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Paul', 'Bird', 'Budgerigars', 'Blue', 24.291373025222146, 'Male', 84.7762936403691, 111.47030462152945, 0, 3, 3, 1, 3, 3, 4, 2, 2, 2, 2, 3, 2, 1, 0, 290095.79125265544);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kassie', '942-173-2712', '37 Bank St, Nepean, ON, Canada', 'kassie_niana@gmail.com', 1, 1, 1, 77.26561157789962, 447138.89265640714, 59);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (60, 'Toast', 'Horse', 'Barb', 'Blue', 8.093671990796185, 'Male', 87.05482784499151, 101.68156220875322, 3, 0, 2, 0, 0, 0, 2, 3, 3, 3, 0, 0, 4, 0, 1, 72383.45492631654);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Delilah', '825-797-6355', '1 Paterson Ave, Montreal, ON, Canada', 'delilah_burt@gmail.com', 0, 2, 4, 40.87068021343829, 150123.18639997125, 60);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (61, 'Indira', 'Rabbit', 'Florida White', 'Brown', 21.665083357268085, 'Female', 184.52543904353405, 122.77566030095434, 0, 1, 1, 0, 2, 2, 2, 2, 0, 0, 2, 0, 4, 3, 1, 133208.31852390946);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kona', '235-635-3929', '45 Woodridge Rd, Cornwall, ON, Canada', 'kona_daphne@gmail.com', 4, 1, 4, 52.32028725588454, 416462.6761083918, 61);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (62, 'Pazzo', 'Cat', 'Siamese', 'Red', 21.510129125829422, 'Male', 89.69652786465174, 180.40597565690464, 3, 2, 0, 4, 4, 4, 0, 1, 1, 1, 4, 3, 2, 1, 2, 10611.191804184076);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Timber', '182-815-2241', '31 Queen Rd, Ottawa, ON, Canada', 'timber_gingi@gmail.com', 3, 2, 2, 25.40907473820132, 117721.53845513103, 62);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (63, 'Chevy', 'Rabbit', 'American Fuzzy Lop', 'Gray', 17.0284294565594, 'Female', 103.74174537782616, 42.841485667517496, 4, 3, 4, 4, 4, 0, 0, 4, 4, 0, 2, 4, 1, 2, 2, 21350.259913945185);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Moby', '259-248-5387', '12 32nd St, Montreal, ON, Canada', 'moby_fuse@gmail.com', 3, 0, 4, 66.62989908785184, 316338.070717727, 63);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (64, 'Nell', 'Hamster', 'Chinese', 'Black', 29.82359583653808, 'Male', 5.910700753762052, 27.313344953927995, 3, 2, 4, 4, 2, 0, 4, 2, 4, 0, 0, 4, 4, 3, 1, 79159.79317062946);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Linus', '817-675-6278', '12 32nd St, Toronto, ON, Canada', 'linus_midnight@gmail.com', 3, 2, 0, 70.50090040413698, 184287.05818669326, 64);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (65, 'Cupcake', 'Hamster', 'Winter White', 'Spotted', 19.286319878895213, 'Female', 44.21503483328074, 35.98237892622698, 0, 0, 2, 3, 1, 2, 0, 2, 0, 3, 3, 4, 4, 0, 1, 306749.93723242235);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Wolfie', '535-222-6400', '25 Woodridge Rd, Cornwall, ON, Canada', 'wolfie_silas@gmail.com', 2, 2, 4, 70.91075499705562, 158376.79643132107, 65);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (66, 'Iris', 'Fish', 'Siamese Fighting Fish', 'Black', 26.19405574247798, 'Male', 160.61776542245207, 19.37018534874576, 3, 2, 1, 0, 3, 2, 2, 1, 2, 3, 2, 4, 1, 2, 1, 198259.598052491);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hunter', '407-388-1838', '49 5th Cres, Nepean, ON, Canada', 'hunter_sansa@gmail.com', 4, 2, 3, 67.52497602969197, 482813.88865174906, 66);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (67, 'Kai', 'Fish', 'Green Swordtail', 'Red', 17.179158222593877, 'Male', 64.02143506963569, 194.78480530394376, 3, 0, 2, 1, 3, 0, 2, 1, 4, 4, 1, 1, 3, 2, 0, 239501.06684978493);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Balou', '104-742-2161', '14 Queen Ave, Nepean, ON, Canada', 'balou_kai@gmail.com', 1, 1, 2, 25.42903197871873, 58954.524351219334, 67);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (68, 'Keiko', 'Dog', 'German Shepard', 'Yellow', 10.35149787823472, 'Female', 111.39759250295432, 84.7375786200543, 2, 3, 0, 2, 0, 2, 0, 4, 4, 0, 3, 0, 3, 1, 2, 176540.7560687371);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jeeves', '700-778-9248', '36 5th Rd, Cornwall, ON, Canada', 'jeeves_theo@gmail.com', 2, 3, 1, 68.103039734341, 416212.87617351214, 68);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (69, 'Chaucer', 'Horse', 'Trakehner', 'Gray', 10.414125459206506, 'Female', 86.4648942735169, 37.38925251249403, 3, 1, 2, 0, 1, 0, 3, 1, 4, 0, 2, 3, 3, 1, 1, 250807.34875388327);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Apple', '174-126-546', '35 5th Ave, Cornwall, ON, Canada', 'apple_lucy@gmail.com', 3, 1, 0, 79.23096642554799, 197135.1399215767, 69);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (70, 'Birdie', 'Cat', 'Siamese', 'Spotted', 14.309873827069687, 'Male', 10.668871228031055, 133.15050258880422, 0, 0, 1, 3, 1, 4, 1, 0, 3, 2, 2, 2, 3, 3, 0, 478374.6406464431);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Summer', '915-305-8037', '31 Woodridge Ave, Nepean, ON, Canada', 'summer_bellatrix@gmail.com', 0, 2, 2, 63.73836732189139, 426206.1225448269, 70);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (71, 'Laguna', 'Fish', 'Green Swordtail', 'Green', 20.590059169624674, 'Male', 55.46231597418204, 10.988720737007828, 4, 2, 2, 3, 2, 2, 4, 3, 2, 3, 3, 3, 1, 0, 0, 105178.09243032619);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pepper', '266-857-4591', '15 Queen Rd, Nepean, ON, Canada', 'pepper_booboo@gmail.com', 4, 1, 1, 74.6092590409325, 206210.77244972857, 71);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (72, 'Midnight', 'Cat', 'Ragdoll', 'Brown', 22.08954852452759, 'Female', 11.198590935020379, 178.72092476807725, 3, 0, 2, 0, 1, 2, 3, 1, 0, 2, 3, 0, 0, 4, 1, 108105.52081659748);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pesci', '355-300-955', '37 5th Rd, Toronto, ON, Canada', 'pesci_goofy@gmail.com', 2, 1, 4, 57.48093064327561, 236387.48385240952, 72);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (73, 'Pipsie', 'Cat', 'Siamese', 'White', 4.842731654569112, 'Female', 129.5681066793028, 134.91538761861597, 0, 0, 4, 3, 2, 0, 2, 2, 4, 2, 3, 1, 0, 1, 0, 80058.62425304546);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Milan', '276-211-4650', '15 54th Cres, Cornwall, ON, Canada', 'milan_mochi@gmail.com', 4, 3, 2, 40.783538383616346, 278011.35882312467, 73);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (74, 'Theo', 'Bird', 'Cockatoos', 'Brown', 6.223274570657891, 'Female', 181.0529074873816, 129.1235253496517, 4, 1, 1, 3, 3, 1, 2, 2, 3, 2, 4, 1, 4, 0, 2, 276082.03358206176);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Malble', '579-918-2902', '48 Woodridge St, Montreal, ON, Canada', 'malble_mylo@gmail.com', 3, 4, 3, 63.40858900515686, 273084.65250781324, 74);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (75, 'Kaly', 'Dog', 'Labrador', 'Blue', 13.9976425187965, 'Female', 175.7527654758811, 168.3997102946287, 4, 1, 1, 0, 1, 0, 4, 3, 1, 0, 3, 3, 4, 3, 0, 458126.8009378);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Porche', '262-900-2224', '11 54th Cres, Cornwall, ON, Canada', 'porche_simone@gmail.com', 0, 2, 2, 51.008700366370356, 116443.56908506219, 75);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (76, 'Spark', 'Horse', 'Trakehner', 'Red', 18.988857108894834, 'Female', 162.19666128935668, 140.49507614222443, 0, 2, 1, 2, 0, 2, 3, 2, 0, 1, 2, 1, 0, 3, 0, 444259.99698511325);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Audi', '604-750-662', '3 Paterson Rd, Ottawa, ON, Canada', 'audi_spark@gmail.com', 4, 1, 0, 79.88040466213374, 66251.59228211867, 76);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (77, 'Olive', 'Horse', 'Barb', 'Black', 26.02325704573541, 'Female', 61.05370647041901, 72.24452294307989, 2, 4, 2, 1, 3, 3, 3, 3, 4, 4, 1, 1, 2, 3, 0, 475563.4300596452);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Murphy', '532-115-5055', '16 32nd St, Ottawa, ON, Canada', 'murphy_merlot@gmail.com', 4, 0, 4, 38.360562546154355, 98354.14056335484, 77);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (78, 'Fibre', 'Fish', 'Green Swordtail', 'Gray', 11.0946716445058, 'Female', 56.52169650792413, 195.5750296414736, 0, 0, 3, 3, 0, 2, 0, 4, 2, 4, 0, 3, 4, 2, 1, 310341.92909817694);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sookie', '186-439-4150', '37 Paterson Ave, Cornwall, ON, Canada', 'sookie_giblet@gmail.com', 3, 3, 4, 40.1434755717781, 412683.9137268374, 78);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (79, 'Winnie', 'Cat', 'Siamese', 'Yellow', 17.033704196720585, 'Male', 164.12722322712045, 88.30815463803751, 3, 0, 0, 3, 4, 0, 0, 4, 1, 2, 1, 3, 3, 2, 1, 358486.8149657809);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Guinness', '154-844-1194', '40 5th Rd, Montreal, ON, Canada', 'guinness_joy@gmail.com', 1, 2, 0, 76.63184228479378, 360109.60907203937, 79);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (80, 'Bob', 'Bird', 'Budgerigars', 'Black', 4.109360988077151, 'Female', 21.646268878912675, 183.92588123286814, 3, 1, 1, 4, 3, 1, 1, 4, 4, 4, 2, 0, 4, 0, 0, 489062.2529517755);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rico', '108-880-495', '20 5th Rd, Cornwall, ON, Canada', 'rico_cleopatra@gmail.com', 0, 1, 3, 54.25235654618254, 277537.3775005654, 80);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (81, 'Picasso', 'Hamster', 'Syrian', 'Blue', 14.068738388954246, 'Male', 181.95629280218665, 111.68909376027972, 3, 0, 1, 3, 3, 3, 4, 3, 1, 0, 4, 3, 2, 4, 0, 262577.143189955);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Monkey', '115-561-8169', '41 5th Ave, Montreal, ON, Canada', 'monkey_acorn@gmail.com', 1, 3, 2, 37.6558748652116, 226565.9069141502, 81);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (82, 'Marshmellow', 'Dog', 'Husky', 'Green', 10.965766854740746, 'Female', 67.6973772524328, 182.80900948926322, 4, 2, 2, 4, 3, 0, 3, 4, 4, 4, 1, 4, 0, 3, 1, 266581.5953842159);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('MrBig', '443-892-5138', '29 Paterson St, Toronto, ON, Canada', 'mrbig_jasper@gmail.com', 4, 4, 1, 18.829992702675472, 321973.1976109815, 82);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (83, 'Fuse', 'Hamster', 'Winter White', 'Gray', 20.889184711076513, 'Male', 152.98870636437366, 186.0543856923559, 2, 2, 4, 1, 3, 4, 1, 2, 0, 1, 2, 3, 1, 0, 2, 78114.0590237317);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Phoenix', '105-284-5295', '26 5th St, Ottawa, ON, Canada', 'phoenix_huckfinn@gmail.com', 3, 4, 1, 61.353865952347284, 368118.2887111264, 83);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (84, 'Luke', 'Bird', 'African Grey Parrots', 'Spotted', 13.46978067331893, 'Female', 144.86948038174577, 192.04909525637726, 0, 4, 1, 2, 4, 2, 2, 3, 2, 4, 2, 1, 3, 2, 0, 119358.98976053909);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Oliver', '886-903-2932', '6 Woodridge Rd, Montreal, ON, Canada', 'oliver_quattro@gmail.com', 1, 3, 2, 79.44647705383792, 80031.61695773377, 84);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (85, 'Landon', 'Fish', 'Goldfish', 'Spotted', 1.913920670974335, 'Male', 148.879973212505, 128.5883072863799, 4, 3, 3, 4, 1, 2, 4, 2, 4, 0, 4, 4, 1, 1, 2, 138687.32277729505);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Dutch', '842-868-8252', '18 54th St, Ottawa, ON, Canada', 'dutch_pixie@gmail.com', 1, 0, 2, 60.86576001513822, 105849.28413331848, 85);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (86, 'Joy', 'Cat', 'Ragdoll', 'Gray', 17.78127647969731, 'Female', 131.33537124576128, 79.98467736028469, 2, 1, 0, 2, 0, 0, 1, 4, 4, 1, 4, 3, 1, 4, 2, 21862.980226569452);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Summer', '663-914-1381', '4 Queen Ave, Montreal, ON, Canada', 'summer_chandler@gmail.com', 0, 2, 3, 60.461188841900714, 127192.84867846049, 86);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (87, 'Picasso', 'Cat', 'Munchkin', 'White', 16.710045302541573, 'Female', 92.67707692234305, 140.17002215319107, 0, 0, 1, 3, 3, 4, 2, 0, 2, 0, 4, 0, 4, 1, 2, 264895.42154706654);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Biloxi', '926-538-9777', '49 Queen St, Toronto, ON, Canada', 'biloxi_doc@gmail.com', 4, 2, 3, 44.495814300396844, 307211.9826904266, 87);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (88, 'Larissa', 'Rabbit', 'Britannia Petite', 'Brown', 7.656256361866045, 'Male', 119.21963132165496, 128.2090839648373, 2, 1, 1, 4, 3, 4, 3, 1, 1, 1, 0, 3, 3, 3, 0, 291500.7823269935);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Willow', '132-327-1970', '48 Bank Ave, Ottawa, ON, Canada', 'willow_niana@gmail.com', 1, 2, 2, 79.61615451004675, 270613.5689258061, 88);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (89, 'Rocky', 'Horse', 'Thoroughbred', 'Brown', 22.165695920717933, 'Female', 144.78252252046207, 195.70425857205979, 0, 1, 2, 3, 3, 2, 1, 4, 1, 3, 4, 4, 0, 2, 2, 229449.570201839);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hunter', '425-464-1218', '30 Bank Cres, Toronto, ON, Canada', 'hunter_bronco@gmail.com', 4, 4, 0, 37.598972199296476, 134135.8089086368, 89);
