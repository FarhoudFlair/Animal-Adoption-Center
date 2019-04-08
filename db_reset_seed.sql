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
    (0, 'Bianca', 'Hamster', 'Winter White', 'Yellow', 28.766703400889785, 'Female', 150.9195393729102, 117.79816002323392, 4, 0, 1, 2, 3, 0, 3, 1, 3, 4, 0, 4, 2, 2, 2, 798.3253857520955);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Skip', 'Dog', 'German Shepard', 'Gray', 6.66237311316027, 'Female', 67.22265186020081, 5.482048582024605, 3, 1, 4, 1, 2, 1, 3, 0, 1, 3, 4, 0, 4, 4, 1, 4168.933978660932);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Giblet', 'Horse', 'Barb', 'Brown', 10.534482799878832, 'Female', 113.78148326258841, 186.77924913393653, 4, 2, 0, 2, 0, 3, 4, 3, 2, 1, 1, 1, 2, 0, 2, 3938.4739476821924);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Strsky', 'Cat', 'Ragdoll', 'Spotted', 23.89871573747693, 'Female', 78.43802450818079, 198.93597055225487, 4, 0, 1, 1, 4, 2, 4, 3, 2, 0, 1, 2, 4, 1, 2, 777.8080074954024);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Ramona', 'Rabbit', 'Britannia Petite', 'Yellow', 25.697580057442327, 'Female', 98.71656300556947, 68.59229172677684, 3, 4, 4, 4, 2, 1, 1, 2, 0, 4, 0, 1, 3, 4, 0, 332.0119302534734);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Elwood', 'Horse', 'Trakehner', 'Red', 27.136593284477154, 'Female', 58.59991607879007, 43.824622481465056, 3, 1, 0, 1, 0, 0, 3, 2, 3, 0, 3, 3, 1, 4, 0, 8271.333781509236);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Tucke', 'Dog', 'Labrador', 'Spotted', 11.10830567006628, 'Male', 66.05302265312758, 87.71497486464884, 2, 1, 3, 0, 2, 2, 2, 1, 3, 4, 3, 3, 4, 2, 1, 495.4355269223705);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'Asia', 'Horse', 'Thoroughbred', 'Gray', 12.038171555309773, 'Female', 95.41246704359416, 104.34830600525626, 0, 4, 0, 4, 1, 1, 3, 1, 3, 0, 1, 3, 2, 1, 0, 9507.053610648805);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Dallas', 'Horse', 'Trakehner', 'White', 0.6123347113721641, 'Female', 82.0244332425108, 105.69025841341137, 1, 1, 2, 4, 0, 3, 4, 3, 0, 4, 2, 4, 4, 2, 2, 301.0212358342996);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Jasmine', 'Fish', 'Goldfish', 'Brown', 25.960680716676677, 'Male', 106.60883809665387, 101.49332121688666, 2, 3, 2, 4, 2, 2, 1, 2, 3, 4, 2, 1, 2, 4, 0, 5724.584567620284);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Beck', 'Fish', 'Green Swordtail', 'Green', 9.520943094813973, 'Female', 92.83785716710658, 135.3816550279585, 3, 2, 0, 0, 4, 4, 1, 2, 1, 2, 0, 1, 0, 3, 0, 8441.184645376143);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Monet', 'Dog', 'German Shepard', 'White', 16.879123205667646, 'Female', 178.8351337488232, 122.03562992765086, 2, 1, 2, 0, 4, 4, 2, 3, 0, 1, 0, 2, 4, 2, 0, 7380.725265498964);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Maggie', 'Cat', 'Ragdoll', 'Blue', 11.068073062463867, 'Male', 28.12977909895848, 131.04055224120762, 4, 0, 4, 3, 0, 2, 3, 2, 1, 3, 4, 3, 1, 0, 2, 2436.493519471328);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'Buffy', 'Horse', 'Trakehner', 'White', 8.01458609717202, 'Female', 145.76787395323527, 152.53610330487106, 1, 4, 3, 3, 3, 0, 0, 4, 1, 4, 3, 1, 0, 3, 1, 5295.753125413621);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Tallulah', 'Rabbit', 'Dutch', 'White', 8.069265433704533, 'Female', 190.11223335558805, 41.766098930541474, 3, 2, 4, 4, 3, 2, 3, 1, 0, 4, 2, 4, 1, 4, 0, 5383.827405167813);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Asia', 'Bird', 'Budgerigars', 'White', 20.98664176468563, 'Male', 7.391315952498461, 101.39601787679742, 1, 4, 3, 1, 2, 1, 1, 4, 3, 0, 2, 3, 1, 3, 2, 9432.955134029682);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Luke', 'Dog', 'Labrador', 'Black', 11.232100516129652, 'Male', 154.4632236745663, 108.51148448259227, 3, 4, 1, 0, 2, 3, 3, 0, 1, 4, 2, 2, 3, 4, 1, 2108.7887481395123);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'Biloxi', 'Cat', 'Ragdoll', 'Gray', 6.498578576649727, 'Female', 159.48555554327586, 9.102551864485726, 2, 3, 0, 3, 4, 2, 1, 1, 1, 2, 0, 0, 2, 1, 2, 9111.360715027704);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Greystoke', 'Bird', 'Cockatoos', 'Black', 9.940090293619248, 'Female', 112.84372115945358, 193.06334813249444, 2, 3, 0, 2, 4, 0, 0, 0, 2, 1, 2, 1, 1, 2, 2, 5504.604887921875);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Arya', 'Hamster', 'Syrian', 'Spotted', 20.566081151002024, 'Female', 188.77037453392782, 130.75511804364834, 1, 4, 1, 3, 0, 2, 1, 0, 0, 0, 4, 1, 2, 1, 2, 3804.879152890308);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Meadow', 'Bird', 'Cockatiels', 'Yellow', 21.136545287833076, 'Female', 130.22928255704255, 34.01163336334953, 2, 1, 3, 4, 1, 4, 3, 0, 3, 2, 1, 3, 3, 3, 1, 8795.111206368234);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Samsung', 'Horse', 'Paso Fino', 'Brown', 22.655679097271655, 'Female', 148.7459615225189, 185.07940404076285, 4, 3, 2, 1, 4, 4, 4, 3, 2, 1, 3, 3, 3, 1, 0, 4346.711166147682);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Gibson', 'Dog', 'Husky', 'Brown', 27.519974709401687, 'Female', 164.9250607854429, 17.339407285813643, 4, 2, 4, 4, 0, 4, 2, 4, 4, 4, 0, 2, 0, 2, 1, 8647.49704687628);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Peanut', 'Bird', 'Cockatoos', 'White', 13.415625945124217, 'Male', 166.26910948704105, 125.60899734319196, 4, 0, 1, 2, 3, 2, 0, 0, 3, 4, 0, 1, 3, 2, 1, 7499.440010023255);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Ike', 'Dog', 'Labrador', 'Green', 8.661026132948662, 'Female', 24.33003915615231, 53.991003927399554, 0, 1, 1, 4, 2, 0, 3, 3, 4, 1, 4, 0, 1, 3, 1, 7127.437725658302);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Brandy', 'Cat', 'Munchkin', 'Red', 27.435482996575256, 'Female', 119.36652583502824, 9.776205000335787, 3, 1, 3, 1, 1, 4, 1, 3, 4, 1, 3, 0, 3, 4, 2, 1890.267648049638);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Dallas', 'Hamster', 'Chinese', 'White', 12.353276772225858, 'Female', 7.8171260044381565, 66.70104431683403, 0, 4, 4, 1, 1, 4, 2, 4, 1, 4, 1, 1, 0, 1, 0, 9417.431932326053);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'Ron', 'Cat', 'Ragdoll', 'Gray', 2.648568142379486, 'Male', 120.84828962623833, 51.783720438085275, 2, 4, 4, 3, 0, 0, 0, 2, 1, 3, 3, 2, 0, 3, 1, 65.26343970088958);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Peaches', 'Horse', 'Barb', 'Black', 17.2122606944347, 'Female', 32.909684291497754, 128.47862047411917, 1, 2, 4, 2, 2, 0, 0, 0, 2, 0, 1, 0, 3, 1, 2, 1572.8463296906918);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Bren', 'Horse', 'Thoroughbred', 'Brown', 27.978062310476126, 'Male', 109.01298656096093, 40.01363314810186, 3, 1, 2, 3, 3, 3, 1, 2, 3, 3, 1, 2, 1, 4, 2, 1375.252184003657);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'Jenna', 'Cat', 'Ragdoll', 'Brown', 27.110686991863723, 'Female', 174.5918168143368, 14.261449424422013, 3, 3, 2, 2, 2, 4, 4, 4, 3, 2, 4, 3, 0, 2, 2, 3678.158179527978);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Wednesday', 'Horse', 'Paso Fino', 'Red', 8.417386678186949, 'Male', 63.01852249958153, 161.67330057005964, 0, 4, 2, 4, 0, 3, 0, 4, 0, 4, 1, 0, 1, 0, 0, 4273.244563501923);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Brandy', 'Dog', 'Husky', 'Gray', 10.923358191975055, 'Female', 141.5721797886676, 92.31880808263749, 1, 3, 3, 1, 0, 1, 3, 2, 1, 4, 0, 4, 2, 1, 0, 5171.053534439889);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Farhoud', 'Hamster', 'Robo', 'Blue', 17.537289173574692, 'Male', 156.88138028692407, 109.36352494539628, 3, 0, 1, 3, 2, 0, 0, 3, 4, 4, 1, 2, 4, 4, 1, 2048.6639655992494);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Honey', 'Bird', 'Budgerigars', 'Gray', 1.159203858513429, 'Male', 79.15248161777777, 92.091108404371, 4, 2, 4, 4, 3, 1, 3, 0, 4, 0, 2, 1, 4, 2, 0, 6514.381117980263);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Lola', 'Horse', 'Barb', 'White', 5.616231512068973, 'Female', 180.82327998572836, 81.1843445969264, 1, 3, 2, 2, 3, 0, 2, 4, 3, 2, 3, 3, 4, 0, 1, 8296.403638691545);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Ebony', 'Hamster', 'Robo', 'Black', 16.470681716062508, 'Female', 27.08874652381465, 24.556144493405288, 2, 1, 2, 0, 3, 3, 0, 4, 2, 0, 0, 4, 0, 3, 1, 224.55164913441698);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Skyler', 'Rabbit', 'American Fuzzy Lop', 'Green', 8.694939615874711, 'Female', 61.399446188644355, 77.26093538151365, 3, 0, 1, 4, 1, 3, 4, 1, 3, 4, 2, 2, 3, 3, 1, 8624.186955465173);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Silas', 'Horse', 'Thoroughbred', 'Black', 3.192955212757565, 'Male', 19.659734285585394, 97.69325304910112, 0, 2, 1, 1, 1, 3, 4, 1, 4, 1, 1, 4, 2, 4, 0, 1699.8434403328386);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Mister Tiggywinkles', 'Fish', 'Green Swordtail', 'Gray', 14.208402722948362, 'Female', 48.715631521157036, 178.11690971168102, 3, 4, 1, 2, 0, 0, 0, 1, 0, 2, 1, 1, 1, 4, 2, 1603.1453502664272);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Sugar', 'Cat', 'Scottish Fold', 'Red', 7.576621507752695, 'Male', 31.034904175683113, 12.471809857470827, 0, 3, 2, 0, 1, 4, 2, 4, 0, 4, 1, 2, 1, 1, 2, 8687.692318104691);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Pinot', 'Hamster', 'Syrian', 'White', 27.11582277173008, 'Male', 158.52564775943642, 148.54299862097469, 3, 2, 4, 2, 0, 0, 1, 2, 3, 4, 2, 4, 0, 3, 2, 7090.073392344204);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Fuse', 'Dog', 'Husky', 'Black', 18.04873638584813, 'Female', 193.27151485170774, 191.95312783682184, 3, 2, 3, 2, 0, 2, 2, 2, 0, 4, 4, 3, 2, 2, 0, 8230.21479338278);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Lucy', 'Dog', 'Husky', 'Green', 6.094240936400886, 'Male', 139.52182850616046, 117.27790214941126, 3, 1, 3, 2, 3, 4, 0, 0, 2, 3, 0, 2, 0, 4, 2, 4585.209028797953);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'Pumba', 'Fish', 'Green Swordtail', 'Gray', 10.158672484510365, 'Female', 163.4089989122079, 64.72616922708983, 0, 4, 0, 1, 3, 3, 1, 3, 1, 1, 4, 1, 2, 4, 2, 6722.812537907213);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Sophie', 'Rabbit', 'Florida White', 'Black', 7.844347329488087, 'Female', 8.873521432648172, 108.13962592710605, 2, 3, 1, 0, 1, 0, 4, 1, 0, 2, 0, 0, 4, 0, 2, 4542.04086721307);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Porche', 'Hamster', 'Syrian', 'Spotted', 28.655669859171176, 'Male', 160.0792238420675, 148.4135865607936, 3, 3, 1, 2, 1, 1, 0, 3, 1, 0, 4, 3, 4, 0, 1, 8887.829671864967);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Winnie', 'Fish', 'Goldfish', 'Gray', 5.60859942653792, 'Female', 160.64259487656858, 108.98633965006513, 1, 0, 0, 2, 4, 1, 4, 1, 1, 2, 2, 0, 0, 0, 2, 9421.599441156033);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Emma', 'Cat', 'Persian', 'White', 23.087484111428633, 'Female', 188.19080380916822, 105.26284571101891, 0, 3, 4, 1, 0, 4, 0, 1, 4, 1, 1, 3, 0, 0, 0, 8406.292776853328);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Vegas', 'Cat', 'Scottish Fold', 'Green', 28.080758753317074, 'Male', 97.32873510126169, 18.97635239144058, 0, 2, 3, 2, 3, 0, 4, 0, 4, 4, 1, 3, 1, 0, 2, 5646.230069335183);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Claire', 'Fish', 'Goldfish', 'Brown', 9.23490030132464, 'Female', 82.560889860144, 26.2989630563958, 3, 2, 1, 0, 4, 1, 2, 1, 0, 3, 3, 0, 3, 4, 0, 6544.279295707133);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Skip', 'Rabbit', 'American Fuzzy Lop', 'Green', 24.141578687942538, 'Male', 16.9527845014144, 36.92662930769374, 4, 3, 2, 0, 1, 1, 1, 0, 3, 1, 4, 4, 4, 2, 1, 4583.235507582086);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'Maggie', 'Rabbit', 'Britannia Petite', 'White', 10.793461102877313, 'Female', 166.86032726431137, 134.48347523265264, 0, 1, 3, 0, 1, 1, 2, 4, 2, 0, 3, 0, 3, 2, 0, 547.4374758263159);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Nugget', 'Cat', 'Persian', 'White', 1.64527675235776, 'Female', 78.32989164089486, 158.7302438652561, 2, 0, 0, 2, 0, 1, 1, 0, 1, 3, 3, 1, 3, 3, 2, 5083.586512316522);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Tangerine', 'Horse', 'Barb', 'White', 8.70553139827464, 'Male', 59.38689585492733, 59.03796147294178, 4, 0, 4, 2, 0, 1, 4, 0, 2, 0, 4, 3, 1, 1, 0, 6327.81483045994);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Sookie', 'Cat', 'Siamese', 'Spotted', 16.06750373471136, 'Female', 152.59581276761295, 81.0270748061555, 0, 4, 0, 3, 0, 3, 1, 2, 0, 3, 3, 0, 4, 0, 2, 8153.0613233974);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Kona', 'Fish', 'Siamese Fighting Fish', 'Red', 12.477455316797784, 'Female', 169.834043844478, 188.59259024148494, 2, 3, 3, 1, 0, 0, 3, 1, 3, 1, 3, 4, 0, 0, 2, 9311.600266377636);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'Malibu', 'Bird', 'Budgerigars', 'White', 4.242306991270052, 'Male', 51.52097198959351, 167.85999714612336, 0, 0, 3, 3, 4, 1, 2, 1, 3, 3, 1, 1, 3, 2, 0, 3042.689606108904);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Hutch', 'Cat', 'Scottish Fold', 'Blue', 10.447398904948798, 'Male', 178.34566900513087, 44.780959692362124, 3, 3, 1, 0, 1, 1, 0, 2, 4, 2, 0, 3, 2, 0, 1, 8360.069320740251);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Keanna', 'Fish', 'Siamese Fighting Fish', 'Red', 16.55232894120269, 'Female', 16.088360441032837, 77.84630177472046, 1, 2, 1, 3, 2, 2, 3, 0, 3, 2, 2, 1, 3, 3, 2, 4235.976911261812);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (60, 'Toffee', 'Rabbit', 'Florida White', 'Brown', 25.01876542862951, 'Female', 146.24596473919658, 177.7421169229399, 4, 2, 3, 0, 2, 3, 2, 4, 4, 0, 1, 4, 4, 3, 2, 2056.816173134116);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (61, 'Wolfie', 'Cat', 'Persian', 'Spotted', 4.277353478554803, 'Female', 156.63942742658304, 94.23291072324935, 3, 3, 1, 4, 3, 0, 2, 3, 2, 0, 3, 2, 3, 1, 0, 1154.814178447729);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (62, 'Kalua', 'Hamster', 'Winter White', 'Yellow', 22.91611200951119, 'Female', 198.09017882106653, 197.5793934477343, 2, 2, 4, 3, 1, 2, 1, 3, 4, 0, 2, 3, 3, 0, 0, 8827.073603370234);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (63, 'Linus', 'Cat', 'Munchkin', 'Gray', 15.037185643150952, 'Male', 84.94709397222188, 196.4961153721504, 3, 3, 4, 2, 1, 0, 2, 4, 4, 0, 1, 4, 2, 2, 0, 2690.018333362552);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (64, 'Jazzy', 'Cat', 'Persian', 'White', 16.078139167088832, 'Male', 199.7033524567257, 70.74552554153814, 0, 2, 1, 2, 3, 3, 1, 0, 0, 1, 4, 4, 2, 0, 2, 9485.867502811936);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (65, 'Rusty', 'Horse', 'Paso Fino', 'Spotted', 11.076619343853432, 'Female', 183.13868862309693, 10.851882540826686, 4, 3, 2, 3, 0, 1, 1, 0, 3, 2, 4, 4, 4, 0, 1, 3903.4664581911748);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (66, 'Ramona', 'Hamster', 'Winter White', 'Green', 7.210094793997789, 'Female', 48.41087955395222, 25.301069309485282, 4, 0, 3, 3, 0, 3, 1, 0, 0, 4, 3, 3, 1, 1, 2, 6009.101370239996);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (67, 'Zach', 'Hamster', 'Syrian', 'White', 21.294304697226238, 'Male', 98.79881983966294, 178.92191105066607, 3, 3, 2, 0, 1, 2, 3, 2, 0, 1, 3, 1, 4, 0, 1, 646.229267977252);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (68, 'Wednesday', 'Rabbit', 'Florida White', 'Red', 10.366826976655037, 'Female', 89.41476350956508, 103.1753478838534, 4, 1, 3, 4, 3, 4, 1, 3, 3, 2, 0, 1, 0, 0, 0, 7792.301292779231);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (69, 'Carter', 'Cat', 'Munchkin', 'Blue', 10.696308559928397, 'Male', 165.61957407256904, 106.13663817145887, 4, 3, 1, 1, 3, 4, 0, 0, 2, 1, 4, 2, 4, 2, 1, 1300.4472557189965);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (70, 'Tangerine', 'Bird', 'Budgerigars', 'Gray', 18.03272192343475, 'Male', 134.76727091416632, 133.9539097871103, 0, 0, 4, 4, 1, 4, 1, 3, 3, 2, 3, 3, 4, 3, 0, 1341.7711975055263);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (71, 'Rusty', 'Rabbit', 'American Fuzzy Lop', 'Green', 7.550482084843422, 'Female', 93.11700486980307, 112.57281344576884, 4, 2, 1, 2, 3, 3, 2, 3, 3, 0, 4, 2, 2, 4, 0, 1496.1568401400284);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (72, 'Cleopatra', 'Cat', 'Munchkin', 'Gray', 27.04666539708801, 'Female', 105.86340952315548, 98.04899266911364, 4, 0, 2, 4, 2, 4, 4, 4, 0, 4, 3, 3, 1, 1, 2, 6475.522556161039);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (73, 'Winnie', 'Bird', 'African Grey Parrots', 'Yellow', 26.677645978826067, 'Female', 144.13945669414397, 76.59505774111037, 4, 2, 2, 0, 2, 2, 2, 0, 3, 3, 2, 0, 2, 2, 1, 5634.192386003703);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (74, 'Strsky', 'Horse', 'Barb', 'Green', 19.122635988052245, 'Female', 142.37669347716331, 67.10987762087663, 4, 2, 4, 2, 0, 2, 1, 3, 3, 4, 2, 0, 0, 1, 2, 4611.355169281693);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (75, 'Wilbur', 'Dog', 'Labrador', 'Gray', 7.240561924930236, 'Female', 173.16795015073546, 195.85024359917134, 0, 3, 0, 2, 1, 3, 4, 1, 2, 4, 3, 1, 1, 0, 0, 7455.759867715532);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (76, 'Fiona', 'Horse', 'Thoroughbred', 'Green', 3.2908214385715904, 'Female', 94.69653432163095, 16.316394521531144, 3, 0, 3, 4, 1, 2, 2, 3, 1, 1, 3, 1, 1, 3, 1, 7673.81626726435);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (77, 'Giblet', 'Dog', 'Husky', 'Gray', 18.426060536534816, 'Male', 69.8239019759469, 14.293060719624815, 2, 0, 3, 0, 3, 2, 3, 4, 3, 2, 0, 4, 4, 4, 1, 405.9849493092992);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (78, 'Carter', 'Fish', 'Siamese Fighting Fish', 'Gray', 6.152720546043708, 'Male', 168.27028764534663, 16.684240065715283, 2, 0, 0, 2, 2, 2, 4, 2, 3, 2, 1, 1, 3, 4, 2, 9123.773522438047);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (79, 'Chevy', 'Horse', 'Paso Fino', 'Green', 19.588398039742785, 'Male', 102.15419424463212, 44.55839122442828, 3, 4, 1, 0, 0, 2, 2, 4, 4, 1, 2, 3, 4, 1, 2, 6763.8260896203365);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (80, 'Timber', 'Hamster', 'Winter White', 'Blue', 15.019025094974758, 'Female', 36.689537373968534, 181.9073316172102, 4, 4, 4, 1, 2, 0, 1, 3, 1, 2, 1, 0, 0, 2, 1, 4512.0997843734895);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (81, 'Choochoo', 'Dog', 'German Shepard', 'Black', 27.3499711183138, 'Male', 176.70502673342006, 126.81209148440291, 3, 4, 0, 4, 3, 2, 3, 0, 1, 0, 4, 4, 4, 2, 0, 1284.77143327286);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (82, 'Doc', 'Rabbit', 'Dutch', 'Black', 11.279827227625779, 'Male', 54.269151529395955, 17.073075630177684, 1, 2, 4, 1, 1, 4, 1, 0, 0, 1, 2, 1, 0, 2, 1, 237.90234255753552);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (83, 'Zara', 'Bird', 'Budgerigars', 'Red', 6.49779919617171, 'Male', 104.45452369160232, 51.34106297860272, 0, 3, 4, 1, 4, 1, 0, 0, 3, 0, 2, 0, 1, 0, 2, 7173.549238454688);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (84, 'Peaches', 'Bird', 'Cockatoos', 'White', 1.1500462108314666, 'Female', 115.46783281651555, 9.686704854683537, 1, 2, 1, 2, 2, 1, 1, 3, 1, 0, 0, 3, 3, 3, 0, 7191.725673947032);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (85, 'ZsaZsa', 'Rabbit', 'Dwarf Hotot', 'Red', 1.352583757880863, 'Male', 160.0155525266108, 101.2269004112423, 2, 1, 2, 2, 0, 2, 0, 1, 4, 4, 1, 4, 4, 3, 0, 9674.926064738906);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (86, 'Samsung', 'Hamster', 'Winter White', 'Yellow', 19.307095622007495, 'Female', 99.04034488905212, 89.0943277444785, 1, 1, 3, 4, 0, 3, 2, 0, 1, 2, 3, 4, 4, 1, 0, 3150.9279283246015);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (87, 'Mooshie', 'Dog', 'Husky', 'Yellow', 10.773018532517979, 'Male', 81.5807776959974, 154.36152078867636, 4, 2, 3, 0, 4, 1, 4, 3, 3, 2, 2, 0, 2, 2, 1, 1267.4509695299575);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (88, 'Potter', 'Hamster', 'Chinese', 'Green', 21.18488674274262, 'Male', 158.2298473449112, 195.55254632415304, 2, 1, 3, 1, 1, 0, 3, 4, 2, 0, 0, 0, 3, 2, 1, 5222.46734379435);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (89, 'Sushi', 'Hamster', 'Syrian', 'White', 7.749684311201722, 'Female', 13.792882299493844, 108.79419294967681, 3, 4, 4, 4, 1, 2, 3, 4, 2, 0, 3, 2, 4, 4, 0, 7118.37007712182);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (90, 'Mika', 'Horse', 'Trakehner', 'Yellow', 26.56979306206911, 'Male', 23.89527169373452, 184.9385456912011, 0, 2, 3, 0, 2, 4, 4, 0, 4, 3, 2, 3, 0, 2, 2, 6425.782208705393);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (91, 'Sheba', 'Hamster', 'Chinese', 'Green', 20.05101553084212, 'Male', 157.4485307903859, 173.37400527165053, 3, 4, 3, 3, 3, 0, 0, 1, 0, 2, 1, 4, 0, 0, 1, 7730.03564295293);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (92, 'Zeppelin', 'Rabbit', 'Dwarf Hotot', 'Blue', 28.817452201905184, 'Male', 75.148544324214, 151.42269104144648, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 3, 0, 0, 0, 214.0620586238319);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (93, 'Paisley', 'Fish', 'Siamese Fighting Fish', 'White', 7.578562394473442, 'Male', 148.4073477018607, 197.62772666795695, 1, 2, 1, 4, 2, 3, 1, 4, 0, 1, 3, 4, 2, 4, 2, 337.737848677489);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (94, 'Jon Snow', 'Hamster', 'Chinese', 'Spotted', 8.982589569560608, 'Male', 92.588468682191, 168.09135422871466, 2, 0, 2, 3, 4, 0, 2, 2, 0, 4, 0, 4, 1, 1, 2, 96.24783578559975);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (95, 'Paris', 'Dog', 'Labrador', 'Blue', 0.5206625188835833, 'Female', 170.36712889560576, 18.023908421809576, 4, 2, 4, 1, 1, 0, 0, 3, 3, 0, 0, 1, 0, 3, 0, 5220.023646656127);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (96, 'Margo', 'Fish', 'Siamese Fighting Fish', 'Blue', 10.505450942140106, 'Male', 189.7323411592835, 77.09407102929997, 0, 3, 1, 3, 2, 1, 3, 2, 1, 3, 3, 1, 4, 3, 1, 3964.4633577204922);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (97, 'RobinHood', 'Hamster', 'Syrian', 'Red', 12.019717227880639, 'Male', 195.24596500862654, 68.4795786545621, 4, 0, 2, 0, 2, 0, 3, 3, 1, 2, 1, 1, 0, 3, 0, 528.7268263074145);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (98, 'Cupcake', 'Cat', 'Scottish Fold', 'Spotted', 2.449698658994804, 'Female', 123.59305407497911, 182.69356431076721, 1, 0, 4, 4, 1, 4, 4, 4, 4, 4, 4, 2, 4, 1, 0, 5878.744404725918);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (99, 'Sweetpea', 'Cat', 'Ragdoll', 'Red', 29.54821831539139, 'Male', 165.2781262395524, 196.6930995595665, 1, 2, 1, 4, 3, 4, 1, 4, 4, 0, 4, 0, 2, 0, 2, 3384.277315922654);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (100, 'MrBig', 'Rabbit', 'Dwarf Hotot', 'Red', 9.77018000204433, 'Female', 88.5018096097509, 160.2159914817211, 1, 3, 3, 0, 1, 3, 0, 3, 2, 2, 2, 0, 1, 1, 2, 5196.326592549406);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Lexi Giblet', '447-273-9521', '12 32nd St, Cornwall, ON, Canada', 'lexi_giblet_alvin@gmail.com', 3, 2, 1, 41.04754414975082, 191335.4577767857, 100);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (101, 'Sophie', 'Cat', 'Persian', 'Spotted', 11.237166198995064, 'Male', 173.91230708884956, 151.40913220053343, 1, 2, 1, 4, 3, 2, 4, 0, 2, 2, 4, 0, 3, 3, 0, 1977.9804089426998);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Keanna Emma', '385-702-5242', '19 Woodridge Ave, Nepean, ON, Canada', 'keanna_emma_koby@gmail.com', 1, 0, 0, 37.92964573819909, 185445.02177928798, 101);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (102, 'Chaucer', 'Rabbit', 'Dutch', 'Spotted', 14.729389649550996, 'Male', 146.91037777587297, 81.25679377084487, 2, 1, 0, 1, 2, 2, 4, 2, 2, 0, 4, 1, 1, 1, 0, 7640.089214295753);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Felix Snooky', '776-274-7760', '35 Queen Cres, Ottawa, ON, Canada', 'felix_snooky_lilbit@gmail.com', 2, 2, 1, 77.0251471148855, 388747.2162844569, 102);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (103, 'Strsky', 'Fish', 'Goldfish', 'Blue', 3.6039013231873116, 'Male', 176.8967336988862, 89.88251500075191, 4, 1, 1, 2, 2, 2, 2, 3, 4, 3, 0, 3, 2, 1, 0, 7505.980549882172);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('China Midnight', '758-773-5320', '8 5th Ave, Toronto, ON, Canada', 'china_midnight_keesha@gmail.com', 0, 0, 1, 78.10106702668926, 41197.00194854774, 103);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (104, 'Timber', 'Horse', 'Barb', 'Yellow', 20.292055918353633, 'Male', 177.61160620081532, 35.99616835940837, 2, 1, 1, 2, 3, 0, 3, 0, 3, 3, 1, 1, 3, 2, 1, 1900.192324115566);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Koby Wednesday', '402-124-8460', '17 Queen Ave, Montreal, ON, Canada', 'koby_wednesday_lefty@gmail.com', 2, 0, 4, 26.935012065293257, 479024.2813507855, 104);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (105, 'Beck', 'Hamster', 'Syrian', 'White', 5.045176028708421, 'Male', 78.54122565436747, 95.13592784856948, 1, 4, 4, 2, 1, 0, 1, 4, 2, 4, 0, 3, 1, 4, 0, 6968.176964099062);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jon Snow Burt', '930-972-3069', '27 54th Rd, Montreal, ON, Canada', 'jon_snow_burt_gingi@gmail.com', 0, 4, 0, 68.51791907641417, 149357.7807120086, 105);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (106, 'Landon', 'Horse', 'Barb', 'Blue', 27.91630665024485, 'Male', 11.974963023884367, 108.35660841208654, 0, 2, 0, 3, 4, 1, 4, 0, 1, 0, 1, 1, 1, 0, 1, 4775.349475939268);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Samsung Birdie', '670-738-8404', '4 Woodridge Cres, Toronto, ON, Canada', 'samsung_birdie_quattro@gmail.com', 0, 1, 0, 70.27109600090407, 287065.7164905356, 106);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (107, 'Malibu', 'Bird', 'Cockatiels', 'Brown', 7.00099453152536, 'Female', 108.35322158050833, 168.9997692634651, 1, 3, 4, 4, 2, 3, 0, 3, 2, 0, 3, 1, 4, 4, 1, 9373.751033518374);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cece Keiko', '771-653-6485', '43 32nd Ave, Ottawa, ON, Canada', 'cece_keiko_cupcake@gmail.com', 4, 1, 4, 34.491729007541, 82849.65197836483, 107);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (108, 'Doc', 'Fish', 'Goldfish', 'Green', 20.127612821716227, 'Female', 163.9244382657962, 89.08040779340277, 3, 1, 0, 1, 1, 1, 3, 0, 2, 2, 4, 2, 0, 1, 1, 2632.82215288893);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Harry Nell', '910-393-1402', '2 Bank Rd, Toronto, ON, Canada', 'harry_nell_honey@gmail.com', 2, 2, 4, 76.47792913631073, 387128.1795669319, 108);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (109, 'Wednesday', 'Rabbit', 'American Fuzzy Lop', 'Black', 8.916321728063387, 'Female', 31.144948661212457, 74.31094609991227, 0, 4, 2, 0, 2, 3, 1, 4, 0, 4, 4, 0, 1, 2, 0, 6726.9973215967375);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kona Malibu', '849-300-1714', '36 5th St, Nepean, ON, Canada', 'kona_malibu_owen@gmail.com', 1, 1, 2, 60.51677867225329, 120638.24627170015, 109);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (110, 'Daisy', 'Rabbit', 'American Fuzzy Lop', 'Blue', 4.275758996157855, 'Male', 140.5932013140269, 194.04731473567045, 2, 4, 3, 1, 0, 4, 4, 1, 2, 4, 4, 2, 4, 2, 1, 6741.874462519483);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Koby Monkey', '788-822-5561', '27 32nd Ave, Montreal, ON, Canada', 'koby_monkey_kassie@gmail.com', 4, 1, 4, 61.4250761920539, 469380.1073011692, 110);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (111, 'Candy', 'Bird', 'Cockatiels', 'Gray', 12.054661201780837, 'Male', 180.09289341812283, 32.91013935405891, 0, 1, 1, 3, 1, 1, 4, 3, 3, 0, 3, 0, 0, 3, 2, 6152.410438428384);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pumba Gingi', '607-677-3443', '30 Queen St, Ottawa, ON, Canada', 'pumba_gingi_chloe alice@gmail.com', 1, 2, 2, 71.53905645914277, 20486.460743221855, 111);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (112, 'Burt', 'Hamster', 'Syrian', 'Yellow', 28.89066693501908, 'Female', 63.133182313756365, 169.12938527901466, 2, 1, 1, 2, 3, 4, 2, 0, 1, 3, 0, 1, 1, 2, 1, 6580.375747966561);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocco Tucke', '280-149-2313', '2 5th Cres, Toronto, ON, Canada', 'rocco_tucke_robinhood@gmail.com', 1, 0, 4, 29.044833190611445, 487763.89801343385, 112);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (113, 'Guinness', 'Cat', 'Siamese', 'Spotted', 11.85956529774946, 'Female', 178.98306132656558, 73.26542818863136, 3, 4, 4, 0, 2, 1, 1, 0, 3, 0, 2, 4, 1, 3, 0, 612.2255429920776);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Diva Mercedes', '986-388-8714', '2 Queen Ave, Ottawa, ON, Canada', 'diva_mercedes_maggie@gmail.com', 3, 2, 1, 39.247217673337545, 53817.219968444406, 113);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (114, 'Summer', 'Bird', 'Cockatiels', 'Gray', 29.982426662159114, 'Male', 159.8189726035944, 100.44528755737491, 0, 0, 2, 3, 4, 2, 4, 2, 2, 0, 0, 2, 2, 2, 2, 5823.760015899783);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('RobinHood Bubbles', '998-388-1355', '23 54th St, Toronto, ON, Canada', 'robinhood_bubbles_kai@gmail.com', 3, 4, 0, 23.55712609548208, 325145.8222595577, 114);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (115, 'Bobbafett', 'Dog', 'Husky', 'Blue', 26.929375221159866, 'Female', 114.1994537229171, 98.11517624780679, 1, 1, 4, 2, 2, 0, 1, 3, 3, 2, 1, 4, 1, 2, 0, 943.7435833960849);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Fiona Laguna', '246-801-7255', '34 Paterson Cres, Toronto, ON, Canada', 'fiona_laguna_kingston@gmail.com', 4, 2, 2, 36.49881923361066, 23057.355970177457, 115);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (116, 'Candy', 'Fish', 'Green Swordtail', 'Yellow', 28.43096975162881, 'Female', 88.81433919103759, 165.89257272367897, 4, 2, 4, 1, 4, 2, 1, 2, 2, 4, 0, 1, 1, 1, 2, 4522.040448872178);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mochi Ernie', '696-426-4931', '5 5th Cres, Nepean, ON, Canada', 'mochi_ernie_spark@gmail.com', 4, 0, 1, 50.70681408530497, 52317.36154054382, 116);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (117, 'Willow', 'Horse', 'Thoroughbred', 'Gray', 22.39671108536319, 'Male', 36.96600392102145, 133.69444517909446, 1, 3, 3, 2, 0, 1, 0, 1, 1, 0, 2, 2, 2, 1, 2, 4600.168209678495);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paris Hermione', '372-557-3905', '2 54th Rd, Cornwall, ON, Canada', 'paris_hermione_graysen@gmail.com', 4, 4, 3, 23.044066939567145, 241493.420362847, 117);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (118, 'Wednesday', 'Horse', 'Trakehner', 'White', 7.444445019353728, 'Female', 95.4014668431004, 176.3860433464697, 2, 1, 4, 2, 1, 0, 3, 1, 2, 2, 0, 1, 0, 1, 0, 9590.100019222837);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Emma Ebony', '847-207-8765', '4 54th Ave, Ottawa, ON, Canada', 'emma_ebony_guinness@gmail.com', 0, 3, 3, 47.82653406102489, 39045.0301449517, 118);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (119, 'Balou', 'Horse', 'Thoroughbred', 'Brown', 3.1974453564750402, 'Male', 36.389754854917754, 155.154453980658, 4, 3, 0, 3, 1, 3, 2, 2, 1, 4, 3, 4, 4, 1, 1, 4795.289923955123);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mylo Jeeves', '311-650-4933', '25 Queen Rd, Montreal, ON, Canada', 'mylo_jeeves_huckfinn@gmail.com', 3, 4, 4, 22.544196553099816, 488900.7776845642, 119);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (120, 'Winnie', 'Hamster', 'Robo', 'Blue', 28.810429705539452, 'Male', 47.757830794512515, 76.86340710018912, 2, 1, 4, 0, 1, 2, 4, 0, 2, 2, 0, 1, 3, 0, 2, 3138.2233666190155);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Dutch Gingi', '245-200-4832', '5 5th Rd, Toronto, ON, Canada', 'dutch_gingi_spark@gmail.com', 3, 1, 1, 70.97394195204853, 357978.6625650996, 120);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (121, 'Elwood', 'Dog', 'Husky', 'Red', 28.936492109607638, 'Female', 59.00867530310053, 157.23253952700122, 4, 2, 0, 1, 1, 1, 4, 0, 3, 1, 2, 1, 2, 3, 0, 2907.8040282822535);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jade Simone', '560-594-5327', '48 Bank St, Ottawa, ON, Canada', 'jade_simone_lefty@gmail.com', 4, 2, 2, 22.078344782952545, 182378.5950910247, 121);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (122, 'Candy', 'Cat', 'Persian', 'Green', 1.7217124186384571, 'Female', 169.44871618385648, 151.55579679273197, 2, 1, 1, 0, 0, 0, 2, 2, 1, 1, 2, 1, 1, 1, 0, 4444.526985548591);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mister Tiggywinkles Donna', '709-505-3081', '12 Paterson Rd, Montreal, ON, Canada', 'mister_tiggywinkles_donna_domino@gmail.com', 4, 0, 0, 77.84515046796514, 445009.0602729416, 122);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (123, 'Bodie', 'Dog', 'Husky', 'Green', 7.830577366871166, 'Female', 140.94709969996705, 150.35632639514523, 4, 0, 3, 0, 0, 1, 1, 2, 2, 2, 4, 4, 2, 0, 0, 3392.1678056124642);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jack Cleopatra', '421-570-2162', '38 54th St, Montreal, ON, Canada', 'jack_cleopatra_kona@gmail.com', 2, 1, 0, 77.99479201987594, 28429.33293764677, 123);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (124, 'Spot', 'Hamster', 'Robo', 'Spotted', 5.266455677526147, 'Male', 85.79338976049965, 59.04525919650775, 2, 4, 3, 1, 3, 0, 1, 0, 3, 1, 4, 1, 1, 4, 0, 787.3229398208927);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Burt Cessa', '633-598-4298', '42 32nd Ave, Montreal, ON, Canada', 'burt_cessa_paddington@gmail.com', 2, 4, 3, 32.89345123818359, 256537.758923196, 124);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (125, 'Madonna', 'Rabbit', 'Dwarf Hotot', 'Black', 19.82183713997259, 'Male', 130.30962250091895, 189.811118568658, 1, 4, 0, 3, 2, 1, 1, 3, 4, 4, 4, 0, 2, 3, 1, 2600.3280749206874);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Winnie Persia', '447-911-4442', '10 Paterson Rd, Cornwall, ON, Canada', 'winnie_persia_bob@gmail.com', 0, 3, 2, 43.706332538381815, 87855.138750431, 125);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (126, 'Redford', 'Fish', 'Green Swordtail', 'Blue', 28.191703685550618, 'Male', 195.4690511686854, 63.165328066571966, 3, 4, 1, 4, 0, 2, 1, 0, 0, 4, 0, 3, 0, 2, 1, 6481.310233597163);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('HuckFinn Gibson', '359-137-9281', '36 5th Cres, Ottawa, ON, Canada', 'huckfinn_gibson_hershey@gmail.com', 2, 2, 0, 24.446532247740674, 397359.00785463804, 126);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (127, 'Parker', 'Cat', 'Ragdoll', 'Black', 28.499523246431796, 'Male', 45.66657589901866, 7.130774643150016, 4, 3, 4, 1, 0, 1, 4, 1, 4, 0, 1, 3, 4, 4, 2, 9034.58544108017);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Midori Buddy', '377-444-6745', '41 32nd Cres, Toronto, ON, Canada', 'midori_buddy_mulligan@gmail.com', 1, 2, 4, 50.91249292936261, 381867.9130832547, 127);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (128, 'Pesci', 'Fish', 'Green Swordtail', 'Yellow', 7.509944014165801, 'Female', 103.0511258244668, 97.26623883707815, 0, 2, 0, 1, 2, 4, 4, 2, 3, 2, 1, 4, 0, 0, 1, 834.427460150736);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Strsky Jenne', '276-669-8120', '24 Bank Cres, Ottawa, ON, Canada', 'strsky_jenne_skip@gmail.com', 2, 4, 2, 60.972686637515494, 455148.06747428695, 128);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (129, 'Doc', 'Fish', 'Green Swordtail', 'Red', 7.407954287504449, 'Male', 58.91494742360434, 194.64046721474173, 4, 0, 4, 2, 2, 0, 2, 1, 0, 2, 0, 3, 1, 4, 1, 7459.778930518959);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Felix Zeppelin', '230-452-5323', '44 5th Rd, Toronto, ON, Canada', 'felix_zeppelin_gingi@gmail.com', 1, 4, 2, 77.93063405008621, 185386.75185422017, 129);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (130, 'Sookie', 'Fish', 'Siamese Fighting Fish', 'White', 10.683220567364403, 'Male', 167.911207883745, 139.4847871074455, 4, 0, 2, 2, 0, 3, 3, 4, 2, 0, 2, 4, 2, 2, 1, 7705.985430440453);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kai RobinHood', '475-875-8350', '48 5th Ave, Montreal, ON, Canada', 'kai_robinhood_mozart@gmail.com', 0, 4, 4, 54.34562780000051, 126029.4223177775, 130);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (131, 'Pazzo', 'Fish', 'Green Swordtail', 'Gray', 23.23781316849111, 'Male', 61.83191584305185, 194.16618720943214, 4, 4, 0, 0, 1, 2, 0, 1, 0, 4, 4, 0, 3, 3, 2, 5697.031645864066);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pesci Sophie', '411-279-7925', '19 Queen Ave, Ottawa, ON, Canada', 'pesci_sophie_hermione@gmail.com', 0, 0, 4, 43.46345056390811, 441843.0972449215, 131);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (132, 'Potter', 'Cat', 'Scottish Fold', 'Green', 7.557913338964704, 'Male', 103.1124784989823, 102.91885620483012, 4, 4, 4, 1, 0, 0, 3, 3, 1, 4, 3, 2, 3, 4, 2, 5109.1602692625265);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bianca Domino', '479-476-7139', '23 Queen Rd, Toronto, ON, Canada', 'bianca_domino_graysen@gmail.com', 2, 2, 1, 20.030747966799755, 228616.76428085583, 132);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (133, 'Simone', 'Bird', 'Cockatoos', 'Yellow', 16.747319549668653, 'Female', 51.742746759846185, 28.131794247814163, 3, 3, 3, 1, 2, 1, 1, 1, 1, 1, 1, 4, 0, 2, 2, 6107.206891352457);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Luke Goofy', '162-256-7489', '37 32nd St, Toronto, ON, Canada', 'luke_goofy_zara@gmail.com', 2, 2, 1, 52.301876786151624, 475276.39339440025, 133);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (134, 'Sugar', 'Cat', 'Persian', 'Black', 7.1618963527047175, 'Female', 195.6400041122044, 180.16675071905533, 1, 4, 3, 3, 3, 4, 3, 1, 4, 3, 2, 2, 4, 3, 0, 4496.652550476061);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Vegas Stitch', '357-119-5360', '13 Bank Rd, Ottawa, ON, Canada', 'vegas_stitch_connor@gmail.com', 4, 3, 3, 57.98433895422559, 439722.0718547145, 134);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (135, 'Iris', 'Hamster', 'Winter White', 'White', 22.219331566769597, 'Male', 173.50469714641648, 124.92811044680167, 3, 0, 0, 1, 0, 2, 0, 3, 4, 0, 1, 0, 4, 4, 0, 9989.75953510329);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Dutch Redford', '827-560-2018', '19 5th St, Cornwall, ON, Canada', 'dutch_redford_apple@gmail.com', 4, 0, 4, 40.7319339783044, 163534.29844302597, 135);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (136, 'Pesci', 'Cat', 'Scottish Fold', 'Red', 1.9226246660169086, 'Male', 31.111221450685914, 116.0071030792807, 2, 0, 3, 0, 2, 2, 3, 3, 4, 4, 4, 0, 4, 1, 2, 4449.059912945737);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Monet Marshmellow', '910-164-2951', '13 Bank Cres, Nepean, ON, Canada', 'monet_marshmellow_dulus@gmail.com', 1, 2, 3, 67.8568843093098, 378896.23546907085, 136);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (137, 'Scout', 'Cat', 'Ragdoll', 'Spotted', 14.613585504869102, 'Male', 89.43290996515867, 83.8303246451978, 0, 1, 2, 0, 2, 1, 1, 2, 0, 4, 4, 0, 4, 3, 1, 8398.388520146273);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Madonna Otis', '344-246-7855', '8 54th Rd, Montreal, ON, Canada', 'madonna_otis_max@gmail.com', 0, 4, 4, 50.448916000317375, 166011.77759123046, 137);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (138, 'Scout', 'Bird', 'Budgerigars', 'Gray', 17.286583713389685, 'Female', 194.1206981545709, 11.468068108618741, 3, 4, 3, 2, 2, 4, 1, 2, 4, 3, 3, 3, 0, 0, 2, 8999.933740965425);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('ZsaZsa Lilypie', '553-489-5338', '49 Queen Rd, Cornwall, ON, Canada', 'zsazsa_lilypie_bono@gmail.com', 0, 4, 2, 34.34831451633878, 137749.8434728611, 138);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (139, 'Skitty', 'Bird', 'Cockatoos', 'Blue', 27.58158266354622, 'Female', 47.739938323207454, 129.02165821118444, 4, 4, 0, 4, 4, 1, 2, 3, 1, 2, 0, 3, 0, 4, 1, 4403.955751665773);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Niana Arnold', '600-110-2895', '49 54th Cres, Toronto, ON, Canada', 'niana_arnold_bobbafett@gmail.com', 4, 4, 1, 35.72313863298386, 65148.18019269528, 139);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (140, 'Mister Tiggywinkles', 'Horse', 'Paso Fino', 'Spotted', 11.728607348272, 'Female', 154.53617333578893, 138.38492156410595, 1, 0, 0, 0, 3, 2, 1, 3, 0, 3, 0, 0, 3, 1, 2, 5710.240537385222);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Fritz Tangerine', '326-480-5946', '45 Woodridge Rd, Ottawa, ON, Canada', 'fritz_tangerine_linus@gmail.com', 1, 0, 3, 72.05545883155787, 498298.15653576405, 140);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (141, 'Gibson', 'Hamster', 'Chinese', 'Yellow', 23.06773338468006, 'Female', 71.38213315900023, 144.07887812069114, 2, 2, 0, 1, 1, 3, 1, 0, 2, 1, 4, 4, 2, 0, 0, 8969.057396024828);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Wolfie Cleopatra', '674-800-000', '41 Queen Rd, Montreal, ON, Canada', 'wolfie_cleopatra_mika@gmail.com', 3, 3, 3, 72.0609460429246, 117942.77009072827, 141);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (142, 'Koby', 'Hamster', 'Winter White', 'Gray', 11.384255992726928, 'Male', 165.88179014942176, 18.69501979423815, 1, 0, 3, 2, 3, 2, 0, 3, 2, 1, 0, 1, 0, 4, 2, 2788.340921122617);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bellatrix Ernie', '511-776-4792', '42 Bank Ave, Montreal, ON, Canada', 'bellatrix_ernie_daisy@gmail.com', 2, 1, 0, 40.3198095728616, 466862.2150963831, 142);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (143, 'Leia', 'Rabbit', 'Florida White', 'Spotted', 6.51848685194953, 'Female', 127.57799279856063, 21.743086433390623, 1, 2, 3, 0, 3, 1, 4, 4, 2, 2, 3, 1, 1, 0, 1, 3571.3158585444944);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Elton Tonka', '193-116-1648', '6 Woodridge Ave, Toronto, ON, Canada', 'elton_tonka_skyler@gmail.com', 3, 2, 0, 26.051466569974025, 161271.97367653606, 143);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (144, 'Nell', 'Rabbit', 'American Fuzzy Lop', 'White', 28.852315930248583, 'Male', 185.29216541196968, 111.20092296168123, 1, 2, 2, 2, 2, 1, 4, 3, 4, 2, 0, 1, 2, 4, 0, 6102.829143544439);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Calvin Sprite', '223-640-3835', '4 Paterson Cres, Cornwall, ON, Canada', 'calvin_sprite_marti@gmail.com', 0, 0, 4, 61.17501257582382, 167550.2867495755, 144);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (145, 'Bob', 'Horse', 'Thoroughbred', 'Green', 27.54172222829305, 'Female', 50.62355678821147, 193.37557579753206, 1, 0, 4, 3, 0, 4, 4, 3, 2, 3, 4, 4, 2, 2, 1, 5149.7463219013325);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bronco Kaya', '576-750-9164', '43 Woodridge Rd, Montreal, ON, Canada', 'bronco_kaya_mischa@gmail.com', 2, 1, 0, 25.806803923367543, 162331.0530506895, 145);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (146, 'Elwood', 'Dog', 'German Shepard', 'Black', 5.346716580704285, 'Male', 34.745580427576385, 153.98930575605735, 1, 4, 2, 3, 1, 0, 1, 4, 4, 3, 0, 3, 4, 4, 1, 3877.91696814896);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Olive Nanda', '543-900-7389', '14 Bank Rd, Montreal, ON, Canada', 'olive_nanda_crosby@gmail.com', 3, 3, 0, 50.80630500415955, 41401.27417235519, 146);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (147, 'Keesha', 'Horse', 'Paso Fino', 'Red', 25.50275628487393, 'Male', 159.119359047921, 34.58023814662954, 0, 0, 0, 0, 0, 4, 4, 2, 3, 1, 0, 2, 4, 3, 1, 2340.028313722941);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocky Stitch', '890-167-9232', '1 Bank Ave, Nepean, ON, Canada', 'rocky_stitch_keanna@gmail.com', 3, 1, 0, 44.42301038075898, 261573.0292433676, 147);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (148, 'Lola', 'Bird', 'Budgerigars', 'Spotted', 18.205558835097865, 'Male', 175.56962006607483, 136.7688822289628, 2, 0, 4, 3, 4, 2, 0, 0, 0, 4, 2, 4, 4, 2, 2, 3926.57674715486);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hermione Bono', '582-272-2943', '18 32nd Ave, Cornwall, ON, Canada', 'hermione_bono_hunter@gmail.com', 4, 3, 0, 29.225720063427385, 444034.29230350506, 148);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (149, 'Gingi', 'Horse', 'Paso Fino', 'Gray', 6.728058620834486, 'Male', 164.25270393630188, 199.67406629999417, 1, 4, 4, 0, 2, 3, 3, 0, 2, 0, 4, 0, 4, 0, 0, 6136.025114005834);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tanner Apple', '454-688-3500', '13 Queen Cres, Montreal, ON, Canada', 'tanner_apple_mooshie@gmail.com', 4, 3, 3, 75.92612218344925, 405131.539298671, 149);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (150, 'Zara', 'Bird', 'Cockatoos', 'Black', 10.641072451403588, 'Male', 177.83466785044763, 76.5369471298083, 3, 2, 2, 1, 3, 3, 0, 0, 0, 2, 2, 1, 1, 2, 0, 1535.8388852805726);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Faya Malibu', '222-620-2848', '39 Queen Rd, Nepean, ON, Canada', 'faya_malibu_landon@gmail.com', 1, 0, 4, 61.73730163695226, 148544.51786870693, 150);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (151, 'Tink', 'Rabbit', 'Britannia Petite', 'Green', 8.419334816340914, 'Male', 32.44034298414055, 52.40676584816574, 4, 3, 2, 2, 4, 0, 3, 1, 1, 0, 2, 3, 4, 0, 2, 1698.8179970627473);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Carter Clooney', '917-309-2781', '9 Queen St, Toronto, ON, Canada', 'carter_clooney_butler@gmail.com', 2, 3, 1, 74.0739486905555, 88656.1614325355, 151);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (152, 'Pumba', 'Bird', 'Budgerigars', 'Blue', 13.925361608934496, 'Male', 41.446819059058825, 65.39851757281608, 3, 4, 3, 0, 0, 0, 3, 1, 2, 4, 0, 4, 4, 4, 2, 5904.478478087669);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Moby Jasper', '616-841-6627', '1 5th St, Ottawa, ON, Canada', 'moby_jasper_wednesday@gmail.com', 2, 3, 1, 45.85177232684818, 97345.96374130691, 152);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (153, 'Joy', 'Bird', 'Cockatoos', 'Green', 26.596620806357578, 'Female', 71.52350729747702, 61.767263236506935, 3, 2, 4, 4, 1, 1, 2, 1, 4, 1, 4, 1, 0, 4, 0, 8263.88948838257);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sprite Pinot', '647-200-9502', '18 5th St, Ottawa, ON, Canada', 'sprite_pinot_nell@gmail.com', 1, 4, 1, 50.9038713616973, 226917.23710073714, 153);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (154, 'Summer', 'Dog', 'Husky', 'Yellow', 4.694932364773162, 'Male', 5.446953996403695, 133.29829166109798, 0, 0, 1, 1, 1, 2, 1, 3, 1, 4, 2, 2, 0, 3, 2, 8846.510349522314);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Keanna Snoopy', '802-258-8156', '48 Queen Cres, Toronto, ON, Canada', 'keanna_snoopy_muggles@gmail.com', 0, 2, 4, 66.72978344632301, 210460.63346457077, 154);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (155, 'Porche', 'Horse', 'Barb', 'White', 1.073225305659729, 'Female', 192.52274116988633, 14.319370987070634, 0, 4, 0, 1, 0, 3, 0, 0, 1, 4, 2, 4, 0, 1, 2, 6903.443677075408);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ernie Pepper', '154-990-7716', '43 32nd Cres, Cornwall, ON, Canada', 'ernie_pepper_monet@gmail.com', 4, 4, 3, 68.3540225889441, 327313.4976440008, 155);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (156, 'Pesci', 'Hamster', 'Winter White', 'Black', 2.0918187883954014, 'Female', 26.783566005351357, 96.10469483427067, 2, 2, 3, 0, 2, 1, 0, 4, 0, 3, 1, 2, 1, 2, 0, 1167.597333408718);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Doc Carter', '551-546-2939', '33 Queen Cres, Cornwall, ON, Canada', 'doc_carter_ed@gmail.com', 0, 0, 2, 34.72829890758924, 235290.94406381194, 156);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (157, 'Candy', 'Rabbit', 'Britannia Petite', 'Green', 26.674944831170965, 'Male', 44.946296336818676, 148.38142112557614, 3, 1, 1, 4, 1, 4, 4, 3, 2, 4, 1, 2, 0, 1, 1, 8089.41346907525);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bobbafett Peanut', '840-438-330', '5 32nd Cres, Montreal, ON, Canada', 'bobbafett_peanut_chaucer@gmail.com', 3, 2, 0, 51.868149670616894, 280447.4671730193, 157);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (158, 'Mochi', 'Cat', 'Siamese', 'Spotted', 12.18697638517592, 'Male', 164.3387114238557, 70.10726885935807, 2, 1, 4, 4, 3, 2, 1, 3, 0, 3, 3, 0, 3, 4, 1, 2165.342312287878);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Burt Choochoo', '210-840-2884', '36 Queen Cres, Montreal, ON, Canada', 'burt_choochoo_greystoke@gmail.com', 4, 2, 3, 62.85973731094781, 374852.7378296403, 158);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (159, 'Cooper', 'Bird', 'African Grey Parrots', 'Green', 6.761998831314437, 'Male', 191.25595741138164, 183.4718032187917, 2, 1, 3, 3, 3, 3, 2, 4, 1, 1, 2, 4, 0, 4, 1, 4010.6347833858235);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jasper Foxy', '441-968-1420', '11 Paterson St, Nepean, ON, Canada', 'jasper_foxy_carter@gmail.com', 4, 3, 0, 31.63942405491734, 347272.8461172542, 159);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (160, 'Mira', 'Bird', 'Cockatoos', 'Blue', 8.13177116643033, 'Male', 174.2255410901631, 77.61088777418053, 2, 2, 2, 1, 1, 1, 3, 0, 3, 3, 2, 4, 1, 4, 0, 9729.567558961011);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Graysen Fiona', '403-937-1268', '16 Paterson Rd, Cornwall, ON, Canada', 'graysen_fiona_fritz@gmail.com', 1, 2, 2, 22.93828473602835, 198429.02143213034, 160);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (161, 'Keesha', 'Hamster', 'Chinese', 'Spotted', 2.368437292376145, 'Female', 169.26919329141796, 10.714987713674141, 1, 4, 0, 1, 2, 0, 0, 3, 4, 4, 2, 2, 3, 4, 1, 9467.58656442987);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bellatrix Jon Snow', '977-482-2225', '25 5th Cres, Ottawa, ON, Canada', 'bellatrix_jon_snow_lucy@gmail.com', 3, 4, 1, 22.530192248675235, 415980.43310572923, 161);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (162, 'Peanut', 'Hamster', 'Chinese', 'Brown', 24.78826232131436, 'Female', 11.842356939453797, 98.43353341230981, 4, 0, 2, 2, 2, 0, 0, 4, 3, 2, 3, 1, 3, 2, 1, 9551.181917663971);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Buddy Mulder', '894-375-4962', '22 54th St, Toronto, ON, Canada', 'buddy_mulder_jenne@gmail.com', 1, 3, 2, 26.52529676434687, 82784.28969721087, 162);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (163, 'Cece', 'Fish', 'Siamese Fighting Fish', 'Brown', 27.6142650475049, 'Male', 116.67845558023923, 73.37252229728581, 3, 0, 0, 4, 0, 2, 2, 0, 1, 4, 2, 4, 2, 1, 1, 873.707017435283);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Koby Kai', '955-294-3561', '1 Paterson Ave, Montreal, ON, Canada', 'koby_kai_duke@gmail.com', 1, 0, 4, 70.71430266255452, 359902.70831772423, 163);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (164, 'Bruin', 'Fish', 'Goldfish', 'Green', 25.869890793959836, 'Male', 41.758929993061734, 150.69054354721794, 1, 1, 1, 1, 2, 4, 1, 2, 3, 4, 0, 2, 3, 4, 1, 6608.0792920878675);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Max Milan', '984-867-7227', '37 54th Ave, Nepean, ON, Canada', 'max_milan_tango@gmail.com', 2, 2, 4, 68.79393058775976, 458581.57632402773, 164);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (165, 'Ramona', 'Hamster', 'Winter White', 'Gray', 27.907497039329247, 'Female', 21.845658871552498, 20.34079470426441, 4, 2, 0, 0, 3, 1, 2, 3, 0, 0, 1, 0, 1, 0, 1, 1616.220344814182);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Gibson Jasper', '981-818-2240', '8 Paterson Cres, Montreal, ON, Canada', 'gibson_jasper_parker@gmail.com', 4, 2, 3, 63.13052016285167, 224291.0128438312, 165);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (166, 'Felix', 'Horse', 'Trakehner', 'Blue', 28.949341931943803, 'Female', 55.06254771014882, 15.775875089788212, 2, 2, 4, 1, 2, 2, 4, 0, 4, 1, 1, 2, 2, 3, 0, 1711.0968952103417);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Joy Lefty', '358-457-2177', '2 Bank Cres, Cornwall, ON, Canada', 'joy_lefty_owen@gmail.com', 0, 1, 3, 59.40054338191738, 361580.4923916047, 166);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (167, 'Sophie', 'Horse', 'Barb', 'Black', 17.382705879222826, 'Female', 67.55558727994946, 89.122995983634, 2, 3, 3, 4, 3, 0, 0, 4, 3, 4, 2, 1, 0, 1, 1, 2364.133146024769);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Faya Luca', '453-740-8605', '4 Bank Rd, Montreal, ON, Canada', 'faya_luca_faya@gmail.com', 1, 0, 4, 54.36369676069006, 54428.768175373516, 167);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (168, 'Scout', 'Dog', 'Labrador', 'Green', 23.606898623869604, 'Female', 73.6655870735495, 60.185522858925054, 0, 2, 0, 4, 0, 0, 3, 0, 0, 3, 1, 1, 2, 1, 0, 7605.144559552636);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Button Goofy', '860-772-9360', '50 Paterson Ave, Nepean, ON, Canada', 'button_goofy_otis@gmail.com', 0, 1, 0, 45.97895750517439, 205502.21582539234, 168);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (169, 'Charlie', 'Hamster', 'Syrian', 'Brown', 2.1733402822011274, 'Female', 101.35929238366542, 192.95050954032254, 4, 4, 2, 1, 2, 1, 4, 0, 2, 0, 4, 1, 3, 2, 0, 1126.3634141992816);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ramona Alvin', '303-353-6573', '6 5th Ave, Ottawa, ON, Canada', 'ramona_alvin_cosmo@gmail.com', 4, 1, 0, 52.49089926936019, 200644.58420767574, 169);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (170, 'Sophie', 'Cat', 'Ragdoll', 'Spotted', 27.00765653086621, 'Female', 97.34341539973323, 85.56727318294752, 2, 4, 4, 4, 0, 2, 3, 1, 0, 0, 4, 0, 1, 1, 0, 8993.819419530659);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Winnie Bordeaux', '263-656-3352', '27 Woodridge Rd, Ottawa, ON, Canada', 'winnie_bordeaux_midnight@gmail.com', 2, 3, 3, 71.63725387389186, 136765.9947029185, 170);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (171, 'Tango', 'Fish', 'Siamese Fighting Fish', 'Spotted', 4.556096356828296, 'Female', 15.736717829608683, 172.770962921088, 2, 0, 4, 1, 0, 3, 1, 4, 3, 0, 1, 1, 0, 4, 1, 5152.5147124623945);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Strsky Shadow', '822-520-8514', '42 54th Rd, Montreal, ON, Canada', 'strsky_shadow_phoenix@gmail.com', 0, 0, 0, 53.01566099840887, 224271.71739030542, 171);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (172, 'Donovan', 'Rabbit', 'American Fuzzy Lop', 'White', 18.90653863629291, 'Male', 7.149225491068424, 105.54055482868768, 1, 0, 4, 3, 1, 1, 0, 2, 3, 3, 3, 2, 3, 1, 1, 1234.8684917685273);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bellatrix Toffee', '277-327-5094', '27 Paterson St, Toronto, ON, Canada', 'bellatrix_toffee_nico@gmail.com', 1, 0, 2, 40.68146314306652, 305615.57187691133, 172);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (173, 'Hunter', 'Rabbit', 'Dwarf Hotot', 'Yellow', 29.353533723986505, 'Female', 61.276154027943434, 33.0912049612281, 3, 2, 2, 0, 0, 1, 3, 4, 4, 4, 2, 1, 3, 4, 1, 5946.892259369813);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Nanda Nico', '325-933-4636', '48 54th Ave, Cornwall, ON, Canada', 'nanda_nico_domino@gmail.com', 3, 1, 0, 62.17012774123333, 342777.12484087265, 173);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (174, 'Tank', 'Dog', 'Husky', 'Spotted', 8.066909228214612, 'Female', 166.44697392140063, 92.95130763257768, 0, 1, 2, 0, 4, 4, 0, 0, 0, 3, 3, 0, 0, 2, 2, 5272.302022286738);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Zeppelin Pinot', '368-276-4781', '32 Queen Cres, Cornwall, ON, Canada', 'zeppelin_pinot_chloe alice@gmail.com', 3, 0, 1, 77.17494986124521, 498711.0478591145, 174);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (175, 'Madonna', 'Fish', 'Green Swordtail', 'Blue', 13.395124269542267, 'Female', 117.18393999054658, 108.35980357231664, 3, 4, 4, 1, 0, 0, 1, 4, 0, 1, 4, 4, 1, 1, 2, 8487.303206865608);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Robert Larissa', '830-126-6409', '22 Bank St, Montreal, ON, Canada', 'robert_larissa_shadow@gmail.com', 1, 1, 2, 69.7392481411376, 251835.10053083132, 175);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (176, 'Luke', 'Cat', 'Scottish Fold', 'Spotted', 8.780317182484735, 'Female', 143.27706434355412, 34.19101323846645, 3, 2, 4, 2, 2, 0, 1, 0, 1, 4, 0, 2, 0, 4, 2, 1713.9225233043387);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Iris Shane', '782-975-8314', '13 Woodridge St, Ottawa, ON, Canada', 'iris_shane_potter@gmail.com', 4, 1, 4, 49.67937585658174, 491167.65879133047, 176);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (177, 'Rufus', 'Cat', 'Ragdoll', 'Red', 17.825927622979474, 'Male', 42.296089369827016, 63.194804813769146, 1, 4, 4, 3, 4, 3, 3, 0, 1, 2, 3, 2, 3, 0, 2, 2707.726957724004);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cece Peaches', '146-742-5643', '11 Bank Rd, Montreal, ON, Canada', 'cece_peaches_wednesday@gmail.com', 2, 2, 0, 48.186319077529745, 240494.94575396032, 177);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (178, 'Toffee', 'Dog', 'Labrador', 'Spotted', 8.497906575008066, 'Male', 137.563263032396, 127.49524483119517, 4, 3, 4, 2, 2, 3, 2, 1, 3, 1, 3, 2, 0, 0, 1, 9829.171307865114);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Owen Ed', '722-238-3388', '40 Paterson Cres, Cornwall, ON, Canada', 'owen_ed_noodle@gmail.com', 2, 2, 0, 63.99879787847375, 100234.61297478343, 178);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (179, 'Summer', 'Bird', 'Budgerigars', 'Blue', 12.889774466168628, 'Female', 23.60083881172475, 97.33526723694601, 3, 3, 1, 0, 3, 2, 0, 0, 2, 3, 4, 1, 2, 1, 0, 7754.148257500731);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Midori Midori', '997-100-8258', '42 Queen Rd, Montreal, ON, Canada', 'midori_midori_cessa@gmail.com', 3, 4, 3, 30.86319532075216, 298163.95539701893, 179);
