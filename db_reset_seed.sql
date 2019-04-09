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
    (0, 'Tink', 'Fish', 'Siamese Fighting Fish', 'Brown', 25.34432884792699, 'Male', 77.22060837172216, 58.57607098905096, 2, 2, 1, 2, 3, 1, 2, 0, 3, 1, 3, 2, 2, 3, 0, 6069.9905942542355);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Stitch', 'Cat', 'Scottish Fold', 'Black', 20.07149345567178, 'Female', 103.29987289449036, 42.41707418650959, 2, 4, 2, 1, 1, 3, 4, 3, 0, 1, 2, 0, 1, 3, 1, 6520.258588198393);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Ike', 'Fish', 'Green Swordtail', 'Blue', 23.48622085257937, 'Female', 36.94942373350621, 161.9653461933702, 4, 1, 1, 4, 0, 3, 1, 3, 1, 3, 4, 0, 4, 4, 1, 653.7432243754365);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Fibre', 'Dog', 'Labrador', 'Red', 10.490377386564306, 'Female', 71.75887790342536, 86.13813346352251, 1, 3, 4, 3, 3, 0, 1, 4, 2, 3, 1, 4, 4, 2, 0, 3024.5592291834273);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Phoenix', 'Cat', 'Persian', 'Brown', 3.0633133016079603, 'Male', 79.06396265529338, 187.4722210219456, 3, 0, 3, 3, 4, 0, 1, 4, 2, 0, 3, 4, 0, 1, 0, 4600.7853534374335);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Maggie', 'Dog', 'Husky', 'Spotted', 19.53395064036772, 'Female', 42.5976876362649, 73.58923452811533, 1, 3, 4, 2, 3, 0, 1, 4, 3, 0, 1, 0, 2, 2, 2, 8228.239004215278);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Kai', 'Cat', 'Munchkin', 'Green', 15.431954916831144, 'Male', 186.97376379649367, 172.76906899181134, 4, 0, 2, 0, 4, 2, 3, 3, 4, 4, 1, 0, 1, 0, 1, 741.468995908785);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'Strsky', 'Cat', 'Munchkin', 'White', 1.378640573491228, 'Female', 44.36694289661384, 62.209098043318285, 1, 2, 3, 2, 1, 1, 0, 2, 3, 3, 0, 1, 4, 3, 1, 1431.2887570961748);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Stitch', 'Horse', 'Paso Fino', 'Gray', 29.337831624567368, 'Female', 109.67187683895789, 177.18557578532844, 3, 2, 2, 2, 1, 3, 1, 3, 0, 3, 0, 2, 3, 3, 2, 9124.605201210981);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Sophie', 'Cat', 'Scottish Fold', 'Yellow', 20.509216175786975, 'Female', 197.43752609441978, 61.83537309532352, 1, 4, 1, 1, 4, 2, 0, 3, 1, 0, 2, 2, 0, 1, 1, 9394.273505151934);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Merry', 'Hamster', 'Syrian', 'Red', 8.02353280868454, 'Female', 181.10363330163997, 57.40936570495179, 2, 2, 0, 3, 1, 1, 2, 2, 2, 0, 1, 3, 2, 4, 2, 4165.481160006632);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Dallas', 'Hamster', 'Robo', 'Green', 11.121133853288557, 'Female', 121.71314217894205, 26.40618213795496, 0, 2, 4, 4, 0, 4, 3, 2, 4, 1, 0, 1, 1, 4, 0, 5680.094745010234);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Charlie', 'Bird', 'Cockatiels', 'Brown', 29.474739896060974, 'Male', 31.202860457725247, 196.60781798626024, 0, 2, 3, 0, 3, 3, 0, 1, 2, 1, 0, 1, 4, 3, 2, 3161.204642822061);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'Ramona', 'Hamster', 'Winter White', 'Blue', 19.733118482303563, 'Female', 42.077254161148154, 179.2204543948854, 0, 2, 3, 3, 2, 0, 3, 2, 3, 2, 2, 2, 1, 3, 2, 4972.832590975194);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Lola', 'Hamster', 'Robo', 'Yellow', 16.43850537511312, 'Male', 185.44935712348178, 18.65114081898921, 2, 1, 4, 3, 2, 0, 4, 4, 4, 0, 1, 0, 4, 1, 1, 9994.335282112097);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Mitzi', 'Cat', 'Scottish Fold', 'Brown', 25.324951431865195, 'Female', 116.93888294879851, 171.87070246250667, 2, 2, 3, 0, 0, 0, 4, 3, 4, 3, 4, 0, 4, 3, 2, 99.37681948859924);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Midnight', 'Dog', 'Husky', 'Brown', 4.341867209793069, 'Female', 15.032245899859747, 74.22358786640267, 2, 1, 2, 4, 3, 1, 0, 4, 1, 3, 2, 2, 1, 1, 1, 6851.93343663711);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'Zach', 'Fish', 'Siamese Fighting Fish', 'Brown', 28.85186294944224, 'Male', 171.251000563578, 172.39468669209796, 4, 1, 0, 1, 1, 1, 0, 3, 1, 0, 4, 2, 4, 2, 2, 2804.1791532491206);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Bruin', 'Fish', 'Goldfish', 'Spotted', 2.918013513485181, 'Male', 132.20368747571052, 101.13185377443908, 3, 3, 4, 1, 4, 1, 0, 3, 2, 2, 3, 1, 0, 1, 0, 8417.397561449363);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Marti', 'Dog', 'Husky', 'Gray', 5.0837592474855535, 'Male', 10.453133389486863, 155.0259377419228, 2, 4, 1, 2, 0, 3, 1, 3, 0, 3, 4, 2, 4, 2, 2, 1374.1109332510666);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Shaq', 'Horse', 'Trakehner', 'Spotted', 27.986845091190517, 'Male', 84.16289434021344, 109.69163441305622, 2, 3, 0, 0, 4, 4, 4, 0, 1, 3, 2, 2, 0, 1, 1, 5734.8553911323415);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Picasso', 'Dog', 'Husky', 'Yellow', 6.552689198662617, 'Female', 184.5689613618048, 84.23480187204366, 2, 2, 0, 4, 4, 2, 0, 3, 2, 3, 4, 1, 4, 1, 1, 4944.010144242758);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Olive', 'Dog', 'Husky', 'Black', 27.787708219362784, 'Male', 43.25271199293869, 81.6190910947211, 1, 3, 1, 3, 4, 2, 0, 1, 4, 3, 3, 0, 0, 1, 1, 3684.6882698654767);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Jack', 'Horse', 'Barb', 'Gray', 18.807373257406322, 'Male', 24.520833785150327, 70.16158628157157, 4, 2, 0, 4, 3, 0, 0, 1, 2, 1, 4, 0, 2, 1, 0, 8850.37858435075);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Iris', 'Bird', 'Cockatiels', 'White', 8.982785186789256, 'Female', 95.6997953036045, 84.56417100538, 3, 3, 0, 0, 4, 2, 4, 4, 0, 1, 2, 1, 0, 1, 2, 4369.5766793846615);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Lola', 'Cat', 'Munchkin', 'White', 15.82527824294325, 'Male', 9.044688671723513, 81.023088066071, 0, 0, 3, 0, 3, 0, 4, 3, 0, 4, 2, 3, 3, 0, 1, 3550.3970398810084);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Delilah', 'Bird', 'Cockatiels', 'Spotted', 9.624221494593652, 'Female', 162.507459247738, 192.95822313961898, 1, 0, 3, 3, 3, 1, 1, 0, 1, 0, 1, 3, 0, 0, 1, 325.37886746777065);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'Pablo', 'Horse', 'Paso Fino', 'Spotted', 9.675931374151272, 'Female', 24.519194243069926, 152.53325424698318, 4, 3, 3, 3, 1, 3, 2, 0, 0, 4, 0, 4, 3, 0, 0, 1949.2283811873656);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Maya', 'Dog', 'Labrador', 'Green', 26.63564805799978, 'Male', 65.57364999212555, 123.15597981788342, 4, 2, 2, 2, 1, 4, 4, 1, 4, 1, 2, 1, 2, 3, 0, 4207.829962337065);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Lilypie', 'Fish', 'Goldfish', 'Black', 20.03881590420156, 'Female', 117.4258074092626, 184.48423589724703, 2, 2, 3, 1, 1, 2, 0, 3, 4, 3, 3, 2, 2, 1, 1, 8903.393805736876);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'Scotty', 'Bird', 'Budgerigars', 'Yellow', 22.194236962304345, 'Male', 111.26285387061648, 28.77473335589285, 3, 0, 3, 3, 1, 3, 0, 2, 4, 3, 3, 2, 0, 3, 2, 3136.449360508607);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Luke', 'Dog', 'German Shepard', 'Red', 20.883456193763898, 'Female', 107.98500146680428, 84.01401617397589, 0, 1, 3, 0, 4, 4, 2, 4, 4, 3, 2, 4, 4, 0, 0, 6166.619272886975);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Daphne', 'Hamster', 'Chinese', 'Yellow', 16.974467571882233, 'Male', 170.47136606082708, 159.03033805672894, 1, 2, 4, 4, 0, 1, 2, 2, 4, 2, 0, 1, 4, 1, 0, 9719.004755372307);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Zeke', 'Horse', 'Paso Fino', 'Green', 17.52066945388972, 'Female', 107.7863076476605, 144.49921550090647, 4, 3, 3, 0, 0, 2, 4, 4, 1, 2, 2, 3, 3, 0, 1, 371.44407090257874);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Maya', 'Bird', 'Cockatoos', 'Brown', 14.834318224354044, 'Male', 160.6233058080215, 36.136525310453266, 4, 4, 0, 2, 3, 1, 3, 2, 2, 4, 4, 1, 0, 2, 2, 7285.9193219195095);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Balou', 'Bird', 'African Grey Parrots', 'Green', 20.78338723779884, 'Female', 143.28276644871397, 15.09526737279315, 3, 0, 1, 2, 1, 4, 3, 4, 0, 4, 4, 3, 1, 0, 0, 75.55221146048322);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Tank', 'Rabbit', 'Dwarf Hotot', 'Blue', 20.945907956369478, 'Male', 188.26076355301402, 17.53856739086559, 2, 1, 1, 1, 1, 0, 3, 0, 0, 3, 0, 2, 3, 2, 1, 665.6982859069842);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Koby', 'Fish', 'Siamese Fighting Fish', 'Gray', 28.232088309044975, 'Female', 42.531398353575874, 10.655252997645498, 1, 3, 3, 2, 4, 2, 2, 1, 0, 0, 1, 2, 0, 4, 0, 5766.515626326184);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Max', 'Bird', 'African Grey Parrots', 'Green', 6.326297100896147, 'Female', 117.28726564143655, 50.802375337139466, 2, 2, 3, 2, 4, 3, 3, 3, 4, 2, 4, 4, 4, 1, 2, 1755.0319146758338);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Ed', 'Fish', 'Siamese Fighting Fish', 'Spotted', 4.5893737861240975, 'Male', 66.45317071473411, 183.15754815706302, 0, 3, 4, 3, 3, 0, 2, 0, 2, 4, 4, 2, 1, 0, 0, 3408.724333612227);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Daphne', 'Cat', 'Munchkin', 'Black', 8.112489061072157, 'Female', 104.98991099088784, 196.12392080864004, 1, 0, 3, 0, 0, 1, 2, 3, 1, 4, 3, 2, 1, 4, 1, 7691.447973600636);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Winnie', 'Hamster', 'Robo', 'Gray', 28.270973618121744, 'Female', 85.84072403577431, 196.69526417766653, 1, 4, 4, 0, 2, 0, 0, 3, 3, 2, 3, 1, 3, 3, 2, 6067.92356665495);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Milan', 'Fish', 'Goldfish', 'Blue', 15.914794840189504, 'Female', 27.17157348382505, 86.48565231520291, 1, 3, 0, 3, 3, 0, 4, 4, 1, 4, 3, 0, 4, 0, 2, 1674.1344839502804);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Asia', 'Horse', 'Thoroughbred', 'Yellow', 15.625324671169155, 'Female', 93.32521201262269, 173.86410796226068, 3, 1, 1, 0, 1, 2, 1, 0, 2, 1, 2, 4, 3, 4, 2, 2886.0664975145805);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'Paisley', 'Dog', 'German Shepard', 'Blue', 18.8527114722096, 'Female', 165.34027720822877, 172.64091709905918, 2, 4, 2, 3, 4, 4, 3, 3, 4, 0, 4, 3, 3, 0, 2, 4921.827134984376);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Chaucer', 'Rabbit', 'Britannia Petite', 'Gray', 9.410036603162618, 'Female', 130.08435817917683, 27.046301953985353, 4, 2, 0, 2, 3, 2, 2, 3, 3, 0, 4, 1, 0, 4, 1, 7601.90987920595);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Dallas', 'Rabbit', 'Dwarf Hotot', 'Green', 17.390103953263864, 'Male', 65.82498842306084, 179.41515142493247, 3, 2, 0, 4, 4, 0, 4, 0, 0, 3, 4, 0, 3, 4, 1, 3228.09199834836);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Roxie', 'Fish', 'Green Swordtail', 'Yellow', 10.10506751489668, 'Female', 149.72019510153928, 187.6590900738484, 4, 0, 1, 4, 2, 0, 0, 3, 3, 1, 2, 0, 1, 4, 1, 9794.937742528993);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Bobbafett', 'Rabbit', 'Florida White', 'Brown', 10.116425920984895, 'Female', 36.39385599266038, 182.4013003023942, 3, 2, 0, 1, 4, 4, 4, 4, 1, 3, 1, 2, 3, 4, 2, 4598.3020719581045);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Buddy', 'Fish', 'Siamese Fighting Fish', 'Spotted', 25.217220707269906, 'Male', 170.18237267522792, 155.679830235812, 2, 2, 4, 2, 3, 1, 1, 0, 2, 2, 1, 4, 3, 3, 2, 6069.289606336121);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Molly', 'Bird', 'African Grey Parrots', 'Spotted', 1.3276201102421274, 'Male', 32.650885070711546, 134.06286837969134, 2, 2, 0, 4, 2, 1, 4, 2, 4, 0, 2, 4, 0, 0, 2, 3781.280040755157);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Domino', 'Bird', 'Cockatoos', 'Brown', 11.337305324743808, 'Male', 137.5264636646446, 7.999986597692331, 3, 4, 1, 2, 3, 0, 3, 4, 4, 0, 4, 1, 0, 4, 0, 8012.216725335205);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'Mister Tiggywinkles', 'Horse', 'Barb', 'Gray', 9.51082369658891, 'Male', 36.12524988214665, 57.11131888301541, 4, 0, 3, 0, 2, 1, 4, 1, 4, 0, 1, 4, 0, 0, 2, 1690.5081160943637);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Picasso', 'Fish', 'Green Swordtail', 'Black', 22.813634095691683, 'Female', 104.00091506711823, 148.8143963758282, 2, 4, 1, 0, 4, 2, 0, 0, 2, 0, 4, 4, 4, 1, 2, 1351.0756075737377);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Felix', 'Horse', 'Trakehner', 'Black', 28.20747400242718, 'Female', 169.75101724243947, 162.4038250636024, 0, 3, 0, 0, 0, 3, 3, 2, 3, 2, 2, 0, 4, 2, 2, 5708.917875953833);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Ozzie', 'Horse', 'Barb', 'Spotted', 4.643347826760184, 'Male', 160.00266320475077, 69.938465748959, 4, 2, 4, 0, 3, 2, 4, 1, 0, 2, 1, 0, 0, 3, 2, 2905.2873454463393);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Midori', 'Cat', 'Siamese', 'Green', 12.149761633374418, 'Female', 28.150037912496675, 96.19409616863612, 3, 1, 0, 2, 1, 1, 3, 0, 3, 0, 0, 0, 1, 1, 2, 7818.704770348698);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'Balou', 'Cat', 'Siamese', 'Blue', 12.09474991037682, 'Male', 19.0446935273184, 60.16292765311465, 0, 2, 1, 4, 0, 4, 1, 3, 1, 3, 0, 4, 1, 3, 0, 7802.515183124566);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Pearl', 'Bird', 'African Grey Parrots', 'Gray', 26.137198563888578, 'Male', 124.58710317296952, 101.39237756998187, 4, 4, 4, 1, 3, 3, 2, 4, 1, 1, 2, 4, 4, 0, 1, 391.93451152331005);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Barney', 'Cat', 'Scottish Fold', 'Red', 22.07186886787523, 'Male', 71.00191591012916, 184.13681276473156, 3, 2, 3, 1, 1, 4, 1, 4, 0, 2, 4, 2, 0, 3, 0, 6811.8659718185945);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (60, 'Balou', 'Bird', 'Cockatoos', 'Brown', 21.65106461272088, 'Female', 8.507674853966414, 99.61882449287636, 1, 4, 0, 4, 0, 4, 1, 2, 2, 2, 3, 0, 2, 2, 2, 8777.773111003504);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (61, 'Skitty', 'Hamster', 'Robo', 'Black', 29.35419670152417, 'Female', 116.60400246243748, 68.25965593702672, 4, 2, 0, 3, 2, 3, 3, 2, 2, 3, 0, 4, 4, 3, 0, 5725.250449531306);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (62, 'Donna', 'Hamster', 'Syrian', 'Gray', 10.702954671356077, 'Male', 145.17002299423086, 182.1751074681069, 2, 4, 1, 2, 0, 2, 3, 3, 1, 1, 3, 3, 1, 2, 0, 8181.193487630162);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (63, 'Paul', 'Cat', 'Ragdoll', 'White', 4.046370912304385, 'Male', 82.4220833703773, 141.29809706178574, 2, 2, 4, 3, 3, 1, 2, 1, 1, 1, 3, 0, 3, 3, 1, 8133.485566731537);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (64, 'Burt', 'Fish', 'Siamese Fighting Fish', 'Gray', 12.37445012969579, 'Female', 150.169368402092, 178.50827397332884, 0, 2, 3, 1, 4, 0, 2, 2, 0, 3, 3, 2, 4, 4, 2, 1093.7727819969814);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (65, 'Bronco', 'Rabbit', 'Dutch', 'Red', 12.162605449840772, 'Female', 199.72661297768883, 78.20806452410058, 4, 4, 1, 2, 2, 1, 1, 2, 2, 0, 3, 0, 1, 2, 1, 5926.112865834086);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (66, 'Potter', 'Horse', 'Trakehner', 'Red', 18.922925256859525, 'Male', 111.62808398164547, 144.0834706902178, 4, 3, 3, 1, 1, 4, 0, 2, 1, 3, 1, 0, 4, 4, 1, 1241.221048338761);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (67, 'Gibson', 'Hamster', 'Chinese', 'White', 11.968054981229248, 'Female', 165.94363910157435, 97.2354578365746, 0, 3, 0, 3, 4, 2, 1, 2, 4, 3, 1, 3, 0, 3, 0, 5359.64451045065);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (68, 'Biscuit', 'Fish', 'Goldfish', 'Yellow', 23.92626544018129, 'Female', 91.23630855402563, 91.91419547324178, 0, 4, 1, 2, 3, 1, 0, 0, 2, 2, 1, 0, 0, 1, 1, 9107.832391719363);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (69, 'Bear', 'Cat', 'Ragdoll', 'Gray', 27.043720556392852, 'Male', 73.09675406252015, 74.21477073597787, 0, 3, 3, 4, 3, 4, 4, 1, 4, 2, 0, 3, 2, 2, 2, 4992.749064228911);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (70, 'Tanner', 'Fish', 'Siamese Fighting Fish', 'Green', 23.545697842076112, 'Male', 168.43612354984572, 48.259432606810726, 1, 2, 4, 3, 2, 1, 3, 4, 1, 4, 3, 0, 1, 1, 1, 1807.6193578413263);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (71, 'Jenne', 'Hamster', 'Winter White', 'Yellow', 23.05714953352583, 'Male', 26.917010432385307, 147.8432903658553, 0, 1, 3, 2, 3, 4, 1, 3, 0, 2, 0, 3, 3, 4, 0, 2475.6083555359737);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (72, 'Domino', 'Bird', 'Budgerigars', 'Yellow', 26.51113449932064, 'Male', 75.04454295711145, 52.32749349824401, 4, 1, 3, 0, 3, 3, 1, 2, 0, 1, 4, 0, 4, 0, 2, 4307.17937856613);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (73, 'Jasper', 'Horse', 'Thoroughbred', 'Red', 11.963827787589441, 'Female', 105.10135637079152, 146.54719558413834, 2, 4, 4, 4, 1, 3, 4, 3, 0, 1, 3, 4, 2, 3, 2, 5319.809009734765);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (74, 'Keiko', 'Dog', 'German Shepard', 'White', 26.84225627493167, 'Male', 30.98993146390444, 178.69161444869232, 2, 2, 3, 1, 0, 4, 0, 2, 0, 4, 2, 2, 1, 3, 1, 6608.145611669103);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (75, 'Blanca', 'Hamster', 'Syrian', 'Yellow', 26.46371371433983, 'Female', 14.48228930846499, 101.66079993576672, 2, 1, 1, 4, 0, 1, 1, 1, 0, 4, 0, 1, 1, 3, 0, 7403.671901977399);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (76, 'Lilbit', 'Bird', 'Cockatiels', 'White', 9.86246278196463, 'Male', 148.50481020047565, 191.9267193728119, 0, 2, 2, 4, 2, 0, 1, 2, 4, 3, 1, 3, 1, 2, 1, 6677.167975474899);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (77, 'Max', 'Bird', 'Cockatoos', 'White', 5.002171907691789, 'Female', 8.190855542372145, 156.48957605775337, 4, 1, 3, 0, 2, 3, 2, 1, 2, 3, 3, 1, 4, 2, 1, 8149.488842194139);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (78, 'Skitty', 'Rabbit', 'Florida White', 'Yellow', 8.374331377320647, 'Male', 192.56119918667383, 113.28132190897011, 4, 0, 0, 0, 0, 2, 3, 4, 0, 1, 2, 0, 2, 2, 2, 4142.797854254787);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (79, 'Hermione', 'Hamster', 'Syrian', 'Black', 25.40821349005178, 'Female', 172.7927807181311, 63.90912448130337, 3, 2, 2, 1, 2, 3, 0, 3, 3, 2, 3, 1, 1, 0, 2, 6210.897351605653);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (80, 'Paul', 'Fish', 'Green Swordtail', 'White', 14.117223056879492, 'Male', 101.05726794285873, 90.46478827841649, 4, 4, 3, 1, 4, 2, 2, 1, 0, 4, 2, 4, 1, 1, 2, 6669.384498148435);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (81, 'Wednesday', 'Horse', 'Trakehner', 'Yellow', 22.067120684397544, 'Male', 180.21110720848523, 130.61062171001564, 1, 4, 2, 2, 1, 1, 0, 4, 2, 2, 2, 4, 3, 0, 1, 6082.11863623124);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (82, 'Olive', 'Rabbit', 'Dwarf Hotot', 'Yellow', 10.054923870553784, 'Male', 35.09352193412595, 19.939065161667628, 3, 2, 1, 4, 4, 4, 3, 4, 2, 0, 0, 3, 2, 4, 1, 6008.290327294306);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (83, 'Snoopy', 'Rabbit', 'Britannia Petite', 'Yellow', 0.6651503155531806, 'Female', 7.863139547327341, 47.75434735062295, 2, 0, 2, 3, 4, 2, 1, 0, 3, 4, 4, 1, 4, 0, 1, 4888.763542816212);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (84, 'Ron', 'Cat', 'Munchkin', 'Spotted', 3.226787787157766, 'Male', 43.236762292277604, 149.99216563881652, 4, 3, 1, 3, 4, 3, 4, 4, 3, 0, 2, 4, 0, 1, 1, 5406.741675817136);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (85, 'Kiefer', 'Horse', 'Barb', 'Brown', 18.41961739392554, 'Female', 99.8708907747052, 52.83618153604787, 2, 3, 0, 1, 0, 2, 1, 4, 0, 3, 3, 2, 0, 3, 2, 8403.860519419046);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (86, 'Harry', 'Rabbit', 'Dwarf Hotot', 'Yellow', 20.06241549177941, 'Female', 156.4805622054056, 39.45504058642303, 2, 1, 4, 1, 1, 3, 4, 3, 4, 2, 0, 1, 0, 3, 0, 3853.3912863895894);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (87, 'Sadie', 'Rabbit', 'Dutch', 'White', 14.13937952939495, 'Male', 17.336501556204386, 80.547872657076, 4, 4, 3, 3, 4, 2, 2, 3, 1, 4, 3, 3, 2, 4, 1, 4223.683216252294);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (88, 'Sheba', 'Dog', 'Husky', 'Brown', 26.67049342119416, 'Female', 148.38050638117184, 172.411364799302, 0, 2, 0, 3, 1, 0, 2, 4, 0, 0, 0, 3, 4, 4, 2, 5330.910687271769);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (89, 'Mira', 'Bird', 'Cockatiels', 'Spotted', 26.714394942598464, 'Female', 28.721590654527294, 32.97976472771636, 1, 2, 1, 3, 0, 0, 0, 2, 4, 3, 0, 4, 1, 4, 0, 1529.2895135096237);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (90, 'Wednesday', 'Rabbit', 'Dwarf Hotot', 'Blue', 9.729786150305031, 'Male', 67.29238230799206, 36.651331615193186, 1, 2, 0, 4, 2, 0, 2, 1, 1, 1, 4, 3, 2, 1, 0, 4239.08018919464);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (91, 'Daisy', 'Bird', 'Cockatoos', 'Gray', 14.141944464423686, 'Female', 157.6757506698822, 180.7011238470789, 2, 4, 0, 2, 3, 0, 0, 3, 1, 4, 2, 1, 0, 2, 2, 8934.74157310346);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (92, 'ZsaZsa', 'Fish', 'Goldfish', 'Spotted', 24.373198560402177, 'Female', 92.09173876010382, 8.531810243533297, 3, 4, 2, 1, 3, 0, 1, 0, 4, 2, 3, 3, 0, 2, 2, 5621.382193638123);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (93, 'Meadow', 'Hamster', 'Winter White', 'Blue', 6.712939787315895, 'Male', 148.27631462452842, 57.42741026567738, 2, 1, 4, 0, 4, 3, 3, 2, 4, 1, 2, 4, 1, 1, 0, 4950.079271152715);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (94, 'Felix', 'Hamster', 'Chinese', 'Gray', 8.65763039659076, 'Female', 62.51125570114522, 136.42971648858313, 3, 3, 3, 0, 4, 2, 1, 2, 2, 1, 2, 2, 4, 4, 1, 2233.830074983019);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (95, 'Marshmellow', 'Horse', 'Trakehner', 'Black', 28.220200288000317, 'Male', 73.78273154990035, 42.77675713768949, 1, 4, 2, 2, 2, 0, 2, 1, 0, 2, 2, 0, 4, 0, 2, 9349.47538821963);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (96, 'Nell', 'Rabbit', 'Florida White', 'Spotted', 12.87591265711672, 'Female', 7.633122521269566, 180.41110251828425, 2, 3, 4, 4, 4, 1, 2, 0, 0, 3, 0, 3, 2, 2, 1, 369.6661246210273);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (97, 'China', 'Hamster', 'Syrian', 'Spotted', 28.160111089327902, 'Female', 106.02606152309647, 186.3994341658953, 1, 4, 2, 0, 4, 0, 4, 3, 4, 4, 0, 0, 1, 2, 0, 6482.475442316043);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (98, 'Peaches', 'Dog', 'Husky', 'Spotted', 0.8767647231102453, 'Female', 59.07027068463063, 127.79174020787448, 0, 3, 0, 2, 0, 4, 0, 3, 3, 4, 1, 3, 2, 4, 2, 2062.948337217509);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (99, 'Graysen', 'Dog', 'Labrador', 'Gray', 13.814673709982362, 'Male', 92.96883310036449, 102.64294802395605, 2, 2, 2, 1, 0, 1, 0, 1, 2, 1, 2, 1, 0, 1, 0, 7995.877941636067);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (100, 'Honey', 'Horse', 'Paso Fino', 'Spotted', 18.073965291973124, 'Male', 34.94058168220853, 8.675857116156562, 3, 4, 1, 2, 2, 0, 1, 0, 1, 1, 1, 1, 1, 4, 2, 8957.006448467724);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tanner Jenna', '298-752-388', '50 Woodridge St, Cornwall, ON, Canada', 'tanner_jenna@gmail.com', 2, 2, 0, 30.459298574406574, 271915.51618246, 100);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (101, 'Laguna', 'Bird', 'Budgerigars', 'Black', 28.584561372474177, 'Male', 27.636018146732244, 153.53049761395744, 3, 3, 0, 4, 2, 1, 0, 1, 2, 3, 3, 2, 4, 0, 1, 6764.498446269885);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pesci Romeo', '464-975-7488', '27 Paterson Ave, Nepean, ON, Canada', 'pesci_romeo@gmail.com', 4, 3, 4, 36.5378475102249, 364538.699378675, 101);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (102, 'Chaucer', 'Hamster', 'Chinese', 'Green', 0.747019188158645, 'Female', 185.53687744769135, 136.40358609033152, 2, 4, 3, 1, 3, 3, 0, 0, 1, 1, 4, 1, 0, 0, 2, 5861.395583657672);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bordeaux Shane', '908-114-635', '44 54th Rd, Ottawa, ON, Canada', 'bordeaux_shane@gmail.com', 4, 0, 2, 47.65363450244993, 42905.18713451414, 102);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (103, 'Keiko', 'Cat', 'Persian', 'White', 2.8379158601725014, 'Female', 135.90272860929363, 179.96449563130489, 2, 2, 4, 0, 3, 2, 2, 0, 3, 2, 3, 3, 2, 4, 0, 6727.850437007983);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Snoopy Koby', '939-881-7169', '14 Bank Rd, Ottawa, ON, Canada', 'snoopy_koby@gmail.com', 2, 0, 3, 28.33171420248224, 440344.6708231683, 103);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (104, 'Robert', 'Fish', 'Siamese Fighting Fish', 'Green', 18.597123864661334, 'Male', 128.0695662021766, 109.12150298488206, 1, 3, 0, 0, 1, 3, 1, 4, 0, 4, 4, 2, 4, 4, 2, 6398.603318854859);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jon Snow Pazzo', '587-834-5586', '24 5th Rd, Cornwall, ON, Canada', 'jon_snow_pazzo@gmail.com', 0, 2, 4, 33.42546376176404, 306147.479097884, 104);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (105, 'Bordeaux', 'Rabbit', 'Dwarf Hotot', 'Black', 22.30670923721807, 'Male', 158.24053432137953, 8.21522789651511, 0, 0, 2, 3, 0, 1, 0, 1, 3, 2, 0, 1, 0, 2, 2, 6206.909694038225);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Willow Fiona', '590-906-8179', '18 Paterson Cres, Toronto, ON, Canada', 'willow_fiona@gmail.com', 0, 1, 0, 26.694786592861902, 58795.07590056513, 105);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (106, 'Alvin', 'Rabbit', 'American Fuzzy Lop', 'Gray', 23.158003533100434, 'Male', 70.61143872856643, 165.93949931429162, 3, 4, 0, 4, 2, 2, 4, 3, 3, 4, 2, 1, 3, 1, 0, 5945.40930648924);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ernie Malibu', '480-555-2578', '48 Paterson Cres, Nepean, ON, Canada', 'ernie_malibu@gmail.com', 0, 0, 2, 35.79592697775174, 294157.6157815954, 106);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (107, 'Dallas', 'Hamster', 'Syrian', 'Brown', 16.58370832031438, 'Male', 139.0036174740476, 80.35429121066389, 4, 3, 2, 1, 2, 2, 4, 3, 2, 3, 1, 0, 1, 2, 0, 700.6909996107579);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bailey Biloxi', '890-215-8232', '50 5th Rd, Cornwall, ON, Canada', 'bailey_biloxi@gmail.com', 1, 3, 4, 33.21796722778164, 386848.3996130982, 107);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (108, 'Ivory', 'Rabbit', 'Dwarf Hotot', 'Green', 27.43133383378005, 'Male', 132.76091217489954, 53.09404377043353, 4, 2, 4, 3, 1, 0, 2, 1, 4, 4, 4, 2, 3, 1, 2, 8150.7454525542835);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Dulus Domino', '370-850-974', '36 54th Cres, Cornwall, ON, Canada', 'dulus_domino@gmail.com', 2, 2, 1, 29.64226384181964, 421997.8654832199, 108);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (109, 'Milan', 'Rabbit', 'Dutch', 'Red', 20.046151538887006, 'Male', 74.42363227844653, 146.16176495496714, 2, 0, 0, 0, 1, 0, 4, 4, 3, 4, 0, 4, 3, 4, 0, 9075.369498683383);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kalua Rocky', '623-534-974', '44 32nd Cres, Cornwall, ON, Canada', 'kalua_rocky@gmail.com', 1, 1, 0, 76.88734395668544, 455691.4517132468, 109);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (110, 'Gibson', 'Rabbit', 'Dwarf Hotot', 'Green', 23.054666327845062, 'Male', 164.72985253496753, 56.02371835077502, 3, 0, 0, 3, 1, 0, 0, 3, 4, 1, 2, 1, 1, 2, 2, 2842.6162069321967);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Quattro Mochi', '502-182-3950', '24 Paterson St, Cornwall, ON, Canada', 'quattro_mochi@gmail.com', 3, 2, 2, 37.568990986570014, 268387.4134802135, 110);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (111, 'Tallulah', 'Cat', 'Ragdoll', 'Spotted', 3.1125793913576443, 'Female', 133.21247574711043, 119.14067420558106, 3, 1, 4, 0, 3, 1, 4, 2, 2, 0, 0, 2, 0, 0, 2, 6861.720324378774);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Chloe Alice Graysen', '473-370-3792', '49 Bank Ave, Nepean, ON, Canada', 'chloe_alice_graysen@gmail.com', 4, 2, 0, 71.76349388120113, 114194.72610797021, 111);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (112, 'Madonna', 'Horse', 'Trakehner', 'Black', 14.933566835365333, 'Male', 190.81157470154614, 96.64910130442098, 3, 2, 0, 3, 1, 4, 2, 3, 1, 4, 1, 3, 2, 2, 0, 6643.564805972512);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Buffy Monkey', '444-121-3116', '7 Paterson Rd, Toronto, ON, Canada', 'buffy_monkey@gmail.com', 2, 3, 0, 36.45698279589321, 236358.80698016874, 112);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (113, 'Meadow', 'Rabbit', 'Britannia Petite', 'Red', 18.697324306597956, 'Female', 155.36963805769582, 58.18223761344568, 1, 0, 0, 0, 1, 0, 1, 2, 4, 2, 3, 3, 3, 4, 2, 8936.652764647622);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bren Shadow', '801-603-8975', '20 32nd Ave, Ottawa, ON, Canada', 'bren_shadow@gmail.com', 1, 1, 4, 60.78833975905682, 159595.13150609488, 113);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (114, 'Phoenix', 'Rabbit', 'Dutch', 'Blue', 26.8688903186083, 'Female', 139.21974418661986, 58.91417335889891, 0, 4, 4, 3, 3, 2, 2, 3, 2, 4, 2, 4, 0, 1, 2, 3744.9196051527624);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Biloxi Carter', '477-613-8708', '7 Bank Cres, Montreal, ON, Canada', 'biloxi_carter@gmail.com', 4, 4, 0, 41.762643418589796, 157724.28636689798, 114);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (115, 'Domino', 'Horse', 'Paso Fino', 'Yellow', 14.815709511481323, 'Male', 39.02486012842057, 152.5871206056623, 4, 2, 4, 0, 4, 1, 2, 2, 1, 0, 4, 1, 4, 3, 0, 3571.031587713742);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Arnold Toffee', '219-354-4001', '34 Queen Rd, Ottawa, ON, Canada', 'arnold_toffee@gmail.com', 0, 4, 1, 18.074327340513534, 323176.80448956694, 115);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (116, 'Mira', 'Bird', 'Budgerigars', 'Blue', 16.31230054100067, 'Female', 25.95895834189645, 149.1622320260804, 4, 3, 1, 4, 2, 4, 0, 4, 3, 2, 3, 0, 0, 0, 2, 7493.546917376651);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sookie Nico', '246-555-7178', '4 32nd Ave, Nepean, ON, Canada', 'sookie_nico@gmail.com', 1, 1, 2, 63.37152201774672, 98323.6326615845, 116);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (117, 'Mia', 'Cat', 'Ragdoll', 'Spotted', 11.446142404269853, 'Male', 146.35686326540664, 70.82243082942117, 2, 0, 0, 0, 3, 3, 2, 3, 0, 2, 0, 4, 3, 1, 1, 407.0247745105768);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Peaches Hershey', '878-525-8392', '50 Paterson Cres, Ottawa, ON, Canada', 'peaches_hershey@gmail.com', 1, 2, 4, 76.38617123953696, 462443.94804690644, 117);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (118, 'Max', 'Bird', 'Cockatiels', 'Blue', 26.93778020123555, 'Male', 131.35938475267105, 135.96798381013818, 1, 3, 0, 4, 3, 3, 2, 1, 0, 4, 3, 3, 2, 4, 2, 5251.277723571841);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Koby Mister Tiggywinkles', '762-350-9460', '33 Paterson Rd, Ottawa, ON, Canada', 'koby_mister_tiggywinkles@gmail.com', 2, 4, 3, 35.47769945172092, 242259.65925151185, 118);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (119, 'Silas', 'Fish', 'Goldfish', 'Green', 24.49006854417671, 'Female', 11.67402175609158, 109.20036811783453, 3, 2, 0, 3, 3, 0, 0, 4, 1, 3, 2, 0, 0, 2, 1, 1012.0668641544611);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Biscuit Monkey', '200-159-1549', '45 Paterson Cres, Toronto, ON, Canada', 'biscuit_monkey@gmail.com', 3, 4, 3, 34.89289561934794, 159243.2575041926, 119);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (120, 'Rocky', 'Hamster', 'Syrian', 'Yellow', 14.055075570337266, 'Female', 181.24934514834578, 189.4376988227122, 3, 3, 1, 0, 2, 2, 4, 1, 0, 0, 4, 0, 3, 2, 0, 4257.021284651123);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Logan Shane', '900-512-6990', '42 54th St, Ottawa, ON, Canada', 'logan_shane@gmail.com', 0, 0, 1, 21.522243721029817, 79549.07688424559, 120);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (121, 'Fig', 'Rabbit', 'Florida White', 'White', 7.181529895751971, 'Female', 199.34844297874778, 70.10188547232724, 3, 0, 4, 0, 3, 3, 0, 4, 3, 3, 0, 1, 1, 2, 0, 9923.815161938372);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Foxy Milan', '176-482-4599', '39 Woodridge Cres, Cornwall, ON, Canada', 'foxy_milan@gmail.com', 2, 3, 1, 49.31131533015921, 429970.13560680783, 121);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (122, 'Foxy', 'Rabbit', 'Dutch', 'Spotted', 10.375327285421239, 'Male', 107.76723523082471, 43.5595396779831, 3, 0, 3, 4, 0, 3, 2, 4, 0, 2, 0, 0, 2, 3, 1, 5778.836653701957);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mozart Smitty', '426-560-6877', '48 Woodridge Ave, Toronto, ON, Canada', 'mozart_smitty@gmail.com', 3, 2, 4, 20.3209936388243, 185280.63764552702, 122);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (123, 'Dutch', 'Cat', 'Munchkin', 'Green', 29.84515467939559, 'Male', 107.24120513734245, 88.61743315309207, 2, 0, 1, 2, 4, 2, 0, 4, 3, 1, 2, 0, 1, 0, 1, 2671.9631860471013);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sunny Nico', '822-195-3215', '31 32nd Ave, Nepean, ON, Canada', 'sunny_nico@gmail.com', 1, 3, 1, 50.33932388951219, 114925.43611984061, 123);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (124, 'Syrah', 'Rabbit', 'Florida White', 'White', 12.845244892809706, 'Male', 37.58749837537792, 8.878286582851148, 4, 4, 2, 4, 4, 0, 1, 4, 4, 2, 3, 4, 3, 2, 2, 814.9258955120127);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Crosby Cessa', '673-196-2948', '24 Paterson Ave, Montreal, ON, Canada', 'crosby_cessa@gmail.com', 1, 1, 0, 72.40567495252733, 419013.56733877666, 124);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (125, 'Bobbafett', 'Fish', 'Green Swordtail', 'Green', 21.253994840565532, 'Male', 62.19259482403253, 118.81498401502827, 3, 3, 3, 0, 0, 2, 4, 0, 3, 1, 4, 0, 4, 1, 1, 1342.1939260918316);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cupcake Caustic', '494-664-8119', '6 Queen Ave, Cornwall, ON, Canada', 'cupcake_caustic@gmail.com', 3, 3, 4, 42.442120466198375, 121313.82847608434, 125);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (126, 'RobinHood', 'Rabbit', 'American Fuzzy Lop', 'Gray', 25.919674535755625, 'Male', 89.2952070070448, 100.18581260228417, 2, 4, 2, 3, 2, 2, 1, 0, 1, 3, 4, 1, 3, 4, 0, 911.7997024129147);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mira Nell', '921-750-4020', '19 Paterson St, Ottawa, ON, Canada', 'mira_nell@gmail.com', 4, 0, 2, 31.157224416757415, 338213.734174204, 126);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (127, 'Hunter', 'Bird', 'Budgerigars', 'Red', 0.6835757248204242, 'Female', 134.0391664386663, 41.32555414995451, 4, 2, 4, 2, 3, 3, 2, 3, 0, 3, 4, 3, 1, 2, 0, 383.0867734315346);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Carter Pablo', '141-810-9462', '21 Paterson St, Montreal, ON, Canada', 'carter_pablo@gmail.com', 4, 3, 2, 22.83954194469778, 425422.4567985972, 127);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (128, 'Clooney', 'Dog', 'Labrador', 'Spotted', 4.607262413319092, 'Female', 32.50187439279408, 97.99411349150904, 3, 4, 1, 0, 2, 3, 2, 4, 1, 1, 4, 4, 1, 1, 1, 2344.7652260407076);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paul Sunny', '377-657-6527', '22 32nd St, Nepean, ON, Canada', 'paul_sunny@gmail.com', 4, 4, 3, 41.24492762236625, 46093.951623734814, 128);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (129, 'Monet', 'Rabbit', 'American Fuzzy Lop', 'Gray', 1.5194292120502808, 'Female', 31.463780213558163, 136.26268363877602, 2, 3, 3, 2, 2, 4, 4, 1, 4, 0, 1, 4, 2, 1, 2, 420.24010804435665);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Brandy Snoopy', '990-927-6137', '28 Queen Rd, Montreal, ON, Canada', 'brandy_snoopy@gmail.com', 3, 3, 0, 39.01991861295549, 405897.0786413129, 129);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (130, 'Picasso', 'Bird', 'Cockatoos', 'White', 4.2556750960384, 'Female', 48.96053351533872, 50.19937037463531, 3, 3, 2, 3, 3, 0, 3, 4, 4, 1, 0, 0, 3, 4, 0, 6574.750667824014);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Zara Elton', '440-124-7058', '20 Bank Cres, Cornwall, ON, Canada', 'zara_elton@gmail.com', 3, 2, 1, 36.33489334006387, 182417.92080513007, 130);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (131, 'Ike', 'Bird', 'African Grey Parrots', 'White', 0.8327667174490982, 'Female', 193.3990146133411, 168.3050113826939, 0, 4, 4, 0, 1, 2, 3, 0, 2, 0, 3, 0, 2, 2, 1, 4505.482959528875);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Asia Peaches', '744-531-5137', '35 Paterson Ave, Toronto, ON, Canada', 'asia_peaches@gmail.com', 2, 1, 1, 58.00025410187477, 301066.9214130441, 131);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (132, 'Tallulah', 'Fish', 'Goldfish', 'White', 22.294107945429804, 'Female', 150.8574274450056, 182.91626403741674, 4, 3, 2, 3, 1, 0, 0, 3, 1, 2, 4, 0, 1, 4, 1, 2524.210843708927);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tank Blanca', '582-199-5180', '47 54th Cres, Toronto, ON, Canada', 'tank_blanca@gmail.com', 3, 2, 4, 72.16696416779737, 104969.88480974824, 132);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (133, 'Onyx', 'Fish', 'Green Swordtail', 'Brown', 16.26999668827136, 'Male', 70.44283184911973, 148.34234183368508, 3, 0, 1, 0, 0, 4, 1, 3, 4, 2, 3, 4, 1, 2, 2, 4643.851417310079);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hunter Paisley', '817-993-6567', '30 Woodridge St, Montreal, ON, Canada', 'hunter_paisley@gmail.com', 0, 0, 0, 48.07037142166564, 437024.576814898, 133);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (134, 'Bootsie', 'Hamster', 'Robo', 'Spotted', 16.028987512990874, 'Female', 160.98537984986007, 161.04555998714827, 3, 0, 3, 0, 4, 4, 1, 0, 0, 3, 0, 4, 1, 1, 2, 4304.478906824772);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Robert Hutch', '798-794-4409', '17 54th St, Cornwall, ON, Canada', 'robert_hutch@gmail.com', 4, 0, 1, 69.84104652083528, 405522.00795616733, 134);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (135, 'Coco', 'Horse', 'Barb', 'Green', 8.347608941622848, 'Male', 111.1040067374377, 124.3201327543223, 2, 4, 1, 0, 4, 1, 0, 0, 3, 0, 4, 2, 3, 0, 0, 5564.245851551725);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Snooky Hermione', '949-806-257', '39 5th Cres, Nepean, ON, Canada', 'snooky_hermione@gmail.com', 1, 0, 2, 53.430777679436, 412722.12491902104, 135);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (136, 'Elwood', 'Bird', 'Budgerigars', 'Yellow', 26.361032286142162, 'Male', 5.58979089365846, 45.93400033288036, 3, 1, 4, 4, 3, 3, 3, 0, 4, 0, 3, 0, 4, 3, 2, 9417.807455256216);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bronco Timber', '609-579-8388', '44 5th Rd, Ottawa, ON, Canada', 'bronco_timber@gmail.com', 0, 1, 2, 18.54898225832486, 489452.8196123741, 136);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (137, 'Choochoo', 'Fish', 'Siamese Fighting Fish', 'Brown', 8.57816935690538, 'Male', 15.128878779799841, 38.31861077633044, 1, 1, 3, 1, 4, 1, 3, 0, 0, 3, 1, 2, 3, 0, 1, 881.7622563428945);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Owen Cleopatra', '456-489-1040', '10 5th Cres, Toronto, ON, Canada', 'owen_cleopatra@gmail.com', 2, 3, 4, 72.10914128665304, 369849.2428383952, 137);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (138, 'Keiko', 'Dog', 'Husky', 'Black', 24.392389952451158, 'Male', 49.638226908809756, 118.58827902012555, 1, 3, 4, 0, 3, 2, 4, 0, 4, 3, 4, 0, 0, 0, 1, 9613.367779621563);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bellatrix Holly', '913-667-9130', '27 Paterson Ave, Toronto, ON, Canada', 'bellatrix_holly@gmail.com', 1, 1, 4, 55.72777092622352, 308645.2265341592, 138);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (139, 'Malble', 'Horse', 'Thoroughbred', 'Blue', 24.7641599313637, 'Male', 129.92860110504887, 145.84141855194838, 1, 2, 4, 1, 0, 3, 1, 3, 2, 4, 2, 0, 0, 4, 2, 9116.854877712325);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Acorn Fig', '912-709-359', '8 Queen St, Montreal, ON, Canada', 'acorn_fig@gmail.com', 1, 3, 4, 38.918484312654854, 485378.9611217244, 139);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (140, 'Sushi', 'Cat', 'Persian', 'Gray', 9.697495361482137, 'Female', 181.34235797125814, 69.95200736225345, 2, 2, 1, 1, 1, 1, 2, 2, 0, 3, 4, 0, 0, 0, 1, 9228.66225273818);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocky Gingi', '850-100-5010', '35 Woodridge Ave, Toronto, ON, Canada', 'rocky_gingi@gmail.com', 0, 1, 0, 18.271242215643248, 31539.938383693843, 140);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (141, 'Phoenix', 'Hamster', 'Syrian', 'Green', 10.059901081230397, 'Female', 171.4441785399585, 64.46634840537936, 3, 2, 3, 0, 3, 2, 3, 0, 3, 0, 1, 4, 1, 3, 0, 7752.4163291149025);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Tanner Choochoo', '788-829-2803', '45 Bank St, Nepean, ON, Canada', 'tanner_choochoo@gmail.com', 0, 2, 4, 77.3029665941757, 426600.2800411118, 141);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (142, 'Zeke', 'Rabbit', 'Dwarf Hotot', 'Yellow', 29.201468050636525, 'Male', 171.22360354342524, 76.2705032526823, 4, 0, 1, 3, 4, 4, 3, 1, 0, 4, 2, 4, 1, 0, 0, 3624.7708059097454);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Olive Owen', '564-370-7503', '47 54th Ave, Ottawa, ON, Canada', 'olive_owen@gmail.com', 0, 0, 3, 20.510596868719585, 365385.92482033814, 142);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (143, 'Mika', 'Fish', 'Siamese Fighting Fish', 'Green', 25.054269818184256, 'Female', 152.77580334558428, 79.32856581424447, 1, 2, 1, 4, 1, 0, 1, 0, 1, 2, 4, 2, 2, 2, 0, 2001.1409540359011);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ed Shaq', '854-374-5696', '41 54th Ave, Montreal, ON, Canada', 'ed_shaq@gmail.com', 0, 2, 4, 78.89886192803311, 207987.68350502054, 143);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (144, 'Bubbles', 'Dog', 'Labrador', 'Gray', 29.896840016633277, 'Female', 175.7081914033458, 10.484978097557704, 0, 1, 4, 0, 1, 1, 4, 3, 4, 2, 1, 4, 2, 4, 2, 3170.360382095459);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Owen Nico', '364-529-2487', '20 5th Rd, Nepean, ON, Canada', 'owen_nico@gmail.com', 0, 4, 4, 45.867875308038165, 183259.31384266043, 144);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (145, 'Mia', 'Horse', 'Paso Fino', 'Yellow', 26.745221877891968, 'Female', 87.74579809502856, 79.64515637779715, 4, 4, 0, 4, 4, 4, 0, 4, 3, 3, 1, 4, 4, 4, 1, 5256.678865487738);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ramona Willow', '953-405-3543', '24 5th Rd, Toronto, ON, Canada', 'ramona_willow@gmail.com', 3, 0, 4, 42.35961595298537, 129009.66385522335, 145);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (146, 'Arnold', 'Horse', 'Barb', 'Brown', 21.700343285387977, 'Male', 33.17049133876602, 159.93120330673406, 2, 2, 2, 2, 1, 4, 1, 0, 2, 3, 2, 1, 4, 2, 2, 7021.012474018934);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Maggie Peanut', '520-575-9499', '44 32nd Ave, Toronto, ON, Canada', 'maggie_peanut@gmail.com', 4, 2, 3, 79.2955998447884, 263734.53190404864, 146);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (147, 'Holly', 'Hamster', 'Chinese', 'Green', 22.51411171840216, 'Female', 77.5148067076204, 31.474447210334315, 3, 0, 3, 4, 1, 3, 2, 1, 1, 3, 3, 1, 1, 0, 0, 9343.991439945858);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Duke Phoenix', '260-348-250', '45 54th Rd, Nepean, ON, Canada', 'duke_phoenix@gmail.com', 1, 3, 2, 22.722393280539077, 259118.58500223656, 147);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (148, 'Diva', 'Fish', 'Green Swordtail', 'Spotted', 24.427241759736656, 'Female', 179.4708407960627, 168.4890457881497, 3, 1, 1, 1, 3, 2, 1, 0, 0, 0, 4, 3, 3, 0, 0, 7402.51703225543);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Robert Candy', '863-694-3325', '27 32nd St, Montreal, ON, Canada', 'robert_candy@gmail.com', 1, 2, 4, 65.22660197147464, 405395.63604160317, 148);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (149, 'Bob', 'Horse', 'Trakehner', 'Black', 16.861729573706356, 'Female', 120.50543702016608, 137.55803885100514, 1, 3, 3, 0, 0, 1, 2, 3, 4, 0, 4, 4, 1, 0, 1, 4988.83392580072);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mister Tiggywinkles Doc', '398-112-1255', '10 5th Ave, Toronto, ON, Canada', 'mister_tiggywinkles_doc@gmail.com', 4, 2, 2, 37.76955548910405, 478530.35396344255, 149);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (150, 'Tallulah', 'Cat', 'Munchkin', 'Red', 2.6601094589747762, 'Male', 23.43849339018078, 197.41458031700844, 2, 3, 1, 4, 0, 2, 0, 3, 4, 1, 1, 3, 0, 2, 1, 3958.6747273631936);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rico Lexi', '362-690-6695', '50 Paterson Ave, Nepean, ON, Canada', 'rico_lexi@gmail.com', 4, 1, 2, 24.61887200535054, 428131.524342864, 150);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (151, 'Dallas', 'Horse', 'Barb', 'Brown', 7.179418781320607, 'Female', 46.814027299675914, 68.36755135059721, 1, 3, 1, 1, 1, 2, 2, 4, 4, 4, 1, 2, 1, 4, 2, 9334.078782760065);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hunter Pearl', '405-765-1844', '41 Paterson Cres, Montreal, ON, Canada', 'hunter_pearl@gmail.com', 0, 4, 3, 57.00874311581381, 324917.47075943486, 151);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (152, 'Elwood', 'Cat', 'Scottish Fold', 'Red', 23.20675415565255, 'Female', 65.52698445845537, 114.56795024911303, 1, 3, 0, 0, 0, 2, 1, 4, 1, 0, 4, 4, 1, 2, 2, 1646.1044680714945);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jazzy Shaq', '986-495-8219', '28 Woodridge St, Nepean, ON, Canada', 'jazzy_shaq@gmail.com', 3, 4, 3, 47.491373773364785, 277782.85432954406, 152);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (153, 'Lilbit', 'Hamster', 'Syrian', 'Blue', 10.18216903474234, 'Female', 12.178163733922391, 172.31659425399704, 4, 2, 1, 0, 0, 0, 4, 1, 2, 4, 2, 0, 0, 1, 2, 8418.921980538342);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pepper Balou', '674-760-2020', '20 Paterson Cres, Toronto, ON, Canada', 'pepper_balou@gmail.com', 2, 0, 3, 29.2123365857417, 428731.30399622396, 153);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (154, 'Donovan', 'Bird', 'Cockatoos', 'Yellow', 6.973061997944693, 'Female', 132.70957278122933, 82.30296027387291, 1, 2, 0, 0, 1, 1, 3, 0, 3, 2, 2, 3, 0, 4, 2, 8883.771139081364);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Yoshiko Buddy', '839-420-3304', '30 Paterson Ave, Nepean, ON, Canada', 'yoshiko_buddy@gmail.com', 1, 3, 1, 75.2500821666249, 374742.0886978691, 154);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (155, 'Ozzie', 'Bird', 'Cockatiels', 'Yellow', 4.663159584680836, 'Female', 168.34447980750588, 122.75862889344147, 2, 4, 1, 1, 4, 2, 4, 2, 2, 4, 3, 1, 0, 1, 1, 8615.376948247489);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Muggles Hutch', '319-650-5250', '1 54th St, Ottawa, ON, Canada', 'muggles_hutch@gmail.com', 4, 2, 0, 55.90775905367507, 70989.24511261898, 155);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (156, 'Strsky', 'Hamster', 'Chinese', 'Black', 19.600503251914258, 'Female', 13.020357153763962, 110.3996024608927, 0, 4, 1, 4, 4, 3, 1, 4, 3, 3, 0, 3, 1, 2, 0, 6112.843755495399);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Lilbit Arnold', '434-491-6385', '26 Bank St, Cornwall, ON, Canada', 'lilbit_arnold@gmail.com', 4, 0, 2, 52.68984835960255, 439963.8708223463, 156);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (157, 'Candy', 'Hamster', 'Chinese', 'Red', 21.023601232769295, 'Female', 87.23989909227299, 145.91860719416277, 2, 2, 1, 4, 1, 3, 3, 1, 1, 3, 4, 4, 4, 0, 1, 8657.27584875892);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Yoshiko Kalua', '509-938-2539', '3 Bank Rd, Toronto, ON, Canada', 'yoshiko_kalua@gmail.com', 4, 4, 0, 55.61193212449621, 334570.05648816243, 157);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (158, 'Milan', 'Horse', 'Paso Fino', 'Black', 16.22609148750071, 'Male', 163.8381099622045, 66.47615556454522, 3, 3, 0, 2, 3, 1, 2, 1, 2, 3, 3, 3, 2, 4, 1, 5080.954328777203);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Buddy Cece', '749-660-8879', '45 5th Ave, Montreal, ON, Canada', 'buddy_cece@gmail.com', 4, 3, 0, 68.41081626753805, 315241.1430743429, 158);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (159, 'Mercedes', 'Cat', 'Ragdoll', 'Brown', 17.813623487790114, 'Male', 174.11113874987817, 192.11519812167867, 4, 0, 4, 4, 2, 1, 3, 4, 2, 3, 1, 1, 4, 2, 1, 6815.762123103627);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Timber Picasso', '937-247-747', '37 Paterson Rd, Toronto, ON, Canada', 'timber_picasso@gmail.com', 3, 1, 2, 37.78047094547601, 239020.7372358765, 159);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (160, 'Reece', 'Cat', 'Siamese', 'Gray', 11.38244683859623, 'Female', 35.35607812463341, 166.6314673176886, 3, 0, 0, 2, 3, 3, 3, 4, 4, 0, 2, 1, 1, 2, 1, 936.8544528308029);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Biscuit Foxy', '876-104-8316', '35 32nd St, Cornwall, ON, Canada', 'biscuit_foxy@gmail.com', 2, 4, 1, 26.540223768542447, 200443.92689462175, 160);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (161, 'Duke', 'Fish', 'Green Swordtail', 'Brown', 26.091724173056804, 'Male', 100.95833248683154, 191.72338690767762, 3, 3, 0, 2, 1, 0, 2, 0, 0, 2, 3, 2, 4, 2, 2, 9666.336897787407);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Nate Sansa', '301-341-9564', '9 Bank Ave, Toronto, ON, Canada', 'nate_sansa@gmail.com', 3, 3, 3, 18.02152862669527, 202080.23308693554, 161);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (162, 'Duke', 'Fish', 'Green Swordtail', 'Green', 26.643443507236327, 'Male', 49.17389862447863, 192.03301007664254, 2, 2, 1, 3, 2, 0, 0, 0, 3, 3, 3, 0, 2, 4, 0, 5182.093028556302);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Butler Dutch', '608-596-7654', '11 Bank St, Ottawa, ON, Canada', 'butler_dutch@gmail.com', 3, 4, 3, 56.411444745528236, 323648.27591137984, 162);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (163, 'Merry', 'Rabbit', 'Dwarf Hotot', 'Black', 9.780124999585961, 'Male', 57.17997374699469, 149.10633151871923, 2, 1, 0, 4, 1, 4, 1, 1, 3, 1, 1, 0, 3, 4, 2, 866.1347214476962);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jade Mulligan', '920-313-3750', '45 54th St, Nepean, ON, Canada', 'jade_mulligan@gmail.com', 3, 4, 2, 38.67986409044907, 389074.5410836372, 163);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (164, 'Balou', 'Bird', 'African Grey Parrots', 'Brown', 23.77784464362366, 'Female', 77.2824858008515, 90.12004924182447, 4, 4, 4, 1, 2, 4, 3, 3, 2, 3, 3, 2, 2, 0, 0, 8917.184361772403);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Daphne Buffy', '926-473-8882', '22 5th St, Cornwall, ON, Canada', 'daphne_buffy@gmail.com', 2, 4, 4, 43.85625235041408, 48994.571188171874, 164);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (165, 'Tallulah', 'Fish', 'Green Swordtail', 'Green', 29.476411215832407, 'Female', 73.03358910424, 141.03306172313026, 2, 3, 2, 2, 1, 3, 3, 0, 1, 0, 3, 3, 1, 4, 0, 7717.928568255818);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Porche Barney', '457-620-1485', '44 Bank St, Nepean, ON, Canada', 'porche_barney@gmail.com', 2, 4, 2, 75.80831326396589, 227655.4713110136, 165);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (166, 'Daisy', 'Rabbit', 'Dwarf Hotot', 'Spotted', 21.394642209562466, 'Male', 129.13852242223982, 147.977758923985, 3, 1, 4, 4, 3, 4, 3, 0, 2, 4, 4, 0, 3, 3, 2, 8334.88070985654);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bobbafett Diva', '218-873-3292', '7 5th Rd, Ottawa, ON, Canada', 'bobbafett_diva@gmail.com', 3, 1, 3, 24.93156252341084, 311153.1061247369, 166);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (167, 'Lefty', 'Bird', 'Cockatiels', 'Yellow', 3.8626399590749747, 'Female', 9.335227958321521, 171.04244079792338, 0, 2, 0, 3, 3, 2, 3, 0, 0, 1, 4, 4, 3, 1, 1, 3888.553459059865);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Acorn RobinHood', '820-758-3508', '23 Woodridge Rd, Cornwall, ON, Canada', 'acorn_robinhood@gmail.com', 4, 2, 2, 76.31250354864872, 410274.6998011779, 167);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (168, 'Timber', 'Bird', 'Cockatiels', 'Spotted', 11.610648201627422, 'Female', 159.4432046711652, 32.38632542813295, 3, 3, 0, 1, 4, 0, 3, 1, 3, 2, 1, 0, 1, 0, 1, 4806.291008856683);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Barclay Vegas', '899-165-4328', '46 Queen Cres, Montreal, ON, Canada', 'barclay_vegas@gmail.com', 1, 2, 2, 30.328863049927577, 165771.74125355404, 168);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (169, 'Rusty', 'Fish', 'Goldfish', 'Green', 6.9656687165065, 'Male', 93.05344704531701, 179.04262481912892, 0, 1, 0, 0, 4, 3, 3, 2, 0, 0, 4, 2, 2, 1, 2, 7026.481110063354);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cupcake Tink', '620-674-3548', '12 Paterson St, Cornwall, ON, Canada', 'cupcake_tink@gmail.com', 4, 2, 1, 55.09387544251779, 236785.82000227534, 169);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (170, 'Mira', 'Dog', 'German Shepard', 'Yellow', 1.4717917020675215, 'Female', 69.87219024072905, 157.2782574250732, 0, 3, 2, 1, 0, 0, 2, 4, 0, 1, 0, 2, 2, 0, 2, 7355.683040342879);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Sophie Kassie', '361-523-320', '36 54th Cres, Nepean, ON, Canada', 'sophie_kassie@gmail.com', 3, 0, 0, 18.232951390915314, 456203.84919177013, 170);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (171, 'Faya', 'Rabbit', 'Florida White', 'White', 9.286895672416868, 'Male', 173.7209228372885, 102.05080207666664, 4, 2, 0, 4, 2, 1, 2, 2, 0, 3, 3, 4, 3, 3, 2, 4200.927053124439);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Max Pablo', '645-275-8887', '44 5th Cres, Cornwall, ON, Canada', 'max_pablo@gmail.com', 4, 2, 4, 73.65912868720888, 367998.85766169976, 171);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (172, 'Faith', 'Horse', 'Paso Fino', 'White', 3.1263007788704074, 'Male', 197.823686428477, 73.04582787558951, 3, 4, 3, 2, 3, 1, 1, 2, 2, 2, 4, 0, 2, 1, 2, 4125.37598716117);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bailey Luke', '759-873-6157', '20 Woodridge Ave, Nepean, ON, Canada', 'bailey_luke@gmail.com', 2, 3, 3, 31.87743667770023, 134470.2159820385, 172);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (173, 'Theo', 'Hamster', 'Chinese', 'Blue', 2.427845269005801, 'Male', 20.363757749277887, 94.76717233870784, 0, 1, 0, 4, 0, 1, 4, 4, 1, 3, 2, 1, 2, 2, 0, 2720.119467497831);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Pazzo Bootsie', '348-559-2108', '22 5th Cres, Nepean, ON, Canada', 'pazzo_bootsie@gmail.com', 1, 0, 3, 78.36808178148331, 456364.02667478693, 173);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (174, 'Sophie', 'Hamster', 'Winter White', 'Red', 1.2385594021339492, 'Female', 166.27606428515526, 7.227671577546927, 2, 1, 1, 1, 3, 4, 4, 1, 2, 0, 1, 4, 2, 2, 2, 9533.507286578595);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Bailey Luke', '603-100-9112', '17 5th Cres, Nepean, ON, Canada', 'bailey_luke@gmail.com', 4, 2, 3, 52.664368462269856, 216911.28617600192, 174);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (175, 'Mia', 'Horse', 'Trakehner', 'Red', 5.791806140553135, 'Male', 81.39899492023488, 124.16820548205011, 0, 0, 1, 1, 3, 2, 3, 0, 3, 1, 3, 2, 1, 2, 1, 6865.927341914637);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Lola Madonna', '508-518-2007', '46 Woodridge Cres, Toronto, ON, Canada', 'lola_madonna@gmail.com', 2, 1, 3, 53.427559440460506, 223621.67409928277, 175);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (176, 'Doc', 'Hamster', 'Chinese', 'Green', 10.279000037269473, 'Female', 134.86529280018036, 167.00132723201438, 4, 2, 4, 4, 4, 3, 2, 3, 0, 2, 4, 1, 1, 4, 2, 4262.353619915243);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Cisco Owen', '540-150-9795', '46 Bank Cres, Cornwall, ON, Canada', 'cisco_owen@gmail.com', 2, 3, 1, 59.870148395272025, 271456.445796106, 176);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (177, 'Malibu', 'Fish', 'Green Swordtail', 'White', 21.725611684308525, 'Male', 74.5615056403341, 114.39027317835216, 2, 4, 2, 0, 1, 2, 2, 4, 0, 0, 4, 3, 2, 4, 2, 4682.6134725966485);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Farhoud Graysen', '558-890-1343', '47 54th Cres, Ottawa, ON, Canada', 'farhoud_graysen@gmail.com', 2, 4, 0, 72.40847621121013, 423101.078776627, 177);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (178, 'Sprite', 'Fish', 'Siamese Fighting Fish', 'White', 2.3826624209394334, 'Female', 93.58883646292625, 126.89572719652011, 1, 0, 0, 0, 4, 4, 3, 1, 1, 2, 4, 1, 0, 4, 2, 4429.847846529528);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Coco Barney', '784-179-9972', '35 5th Rd, Ottawa, ON, Canada', 'coco_barney@gmail.com', 1, 2, 4, 72.71991651745327, 448492.28487404506, 178);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (179, 'Fritz', 'Cat', 'Siamese', 'Blue', 4.5516763620647644, 'Male', 115.43547992957551, 32.672102249046986, 3, 2, 1, 1, 3, 3, 0, 0, 0, 3, 2, 4, 0, 4, 2, 9415.20313710804);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mercedes Goofy', '385-693-456', '35 54th Ave, Montreal, ON, Canada', 'mercedes_goofy@gmail.com', 3, 3, 2, 76.30023164829763, 311453.2357430704, 179);
