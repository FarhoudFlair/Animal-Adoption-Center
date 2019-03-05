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
    (0, 'Samsung', 'Horse', 'Barb', 'Blue', 14.42170692753551, 'Male', 89.01818564282992, 65.10070096248779, 0, 2, 2, 0, 0, 1, 3, 2, 1, 2, 3, 1, 4, 0, 1, 68480.2818832563);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Jazzy', 'Cat', 'Siamese', 'Red', 11.711892652289484, 'Male', 52.066952824443185, 130.9012932491034, 0, 3, 1, 2, 1, 0, 4, 3, 0, 4, 3, 0, 3, 4, 2, 233743.70092518005);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Gingi', 'Cat', 'Munchkin', 'Red', 13.268015847225495, 'Female', 156.0734743657783, 39.97493243020392, 1, 0, 0, 4, 2, 3, 1, 1, 1, 2, 4, 2, 1, 4, 1, 208805.3684660175);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Biscuit', 'Hamster', 'Winter White', 'Gray', 3.193346453747632, 'Male', 20.319695208192442, 174.45187759879968, 2, 0, 0, 4, 2, 4, 0, 1, 4, 4, 4, 0, 1, 1, 0, 311649.5750952711);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Wolfie', 'Cat', 'Siamese', 'Yellow', 21.33756022435523, 'Male', 67.9045926002872, 155.43615832359836, 2, 3, 4, 3, 0, 1, 3, 3, 2, 2, 1, 2, 0, 3, 0, 115731.75207327878);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Delilah', 'Bird', 'Cockatiels', 'White', 15.476171022400978, 'Male', 119.68694210043436, 172.72545307033874, 1, 2, 2, 1, 1, 0, 1, 1, 2, 3, 2, 4, 3, 2, 2, 65898.1784778438);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Nugget', 'Horse', 'Paso Fino', 'Green', 18.157649199318826, 'Female', 12.939029855585702, 180.27351675578075, 3, 3, 3, 2, 1, 1, 3, 0, 0, 3, 4, 0, 0, 3, 2, 310974.045004854);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'Mercedes', 'Horse', 'Paso Fino', 'Red', 22.622589962572988, 'Male', 185.8548170495631, 111.70702074899106, 2, 0, 1, 3, 2, 2, 2, 0, 4, 3, 0, 1, 4, 4, 2, 434853.1368492038);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Theo', 'Fish', 'Siamese Fighting Fish', 'White', 19.909772970392112, 'Female', 191.06343236137621, 131.16193745179123, 4, 2, 4, 1, 1, 0, 2, 3, 1, 0, 2, 0, 2, 0, 2, 455218.35785328335);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Wednesday', 'Rabbit', 'Florida White', 'Blue', 7.999075008516144, 'Male', 123.51326516290594, 23.20419484595414, 4, 4, 3, 4, 1, 2, 4, 3, 4, 2, 2, 0, 3, 4, 1, 415764.90601787623);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Ramona', 'Dog', 'Labrador', 'Gray', 19.63818117805797, 'Female', 105.76160456253697, 176.35933715019226, 3, 1, 3, 3, 3, 3, 1, 3, 3, 0, 4, 3, 1, 0, 2, 313327.1078275041);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Molly', 'Cat', 'Siamese', 'Blue', 21.206406323614267, 'Male', 65.36449418599696, 24.02428479935457, 2, 0, 4, 4, 2, 2, 0, 3, 4, 0, 2, 3, 3, 3, 0, 144951.17788394305);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Marti', 'Rabbit', 'American Fuzzy Lop', 'White', 4.194936386193917, 'Male', 142.27511513131347, 76.00119342051629, 2, 3, 2, 0, 3, 3, 0, 2, 1, 1, 4, 1, 4, 1, 1, 261023.7517127991);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'Foxy', 'Horse', 'Thoroughbred', 'Brown', 8.834448247231489, 'Male', 49.57691591541285, 13.71452454252339, 2, 0, 2, 2, 3, 2, 0, 2, 3, 3, 4, 1, 0, 2, 1, 435843.347595158);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Acorn', 'Cat', 'Persian', 'Green', 1.989664857078518, 'Female', 189.08582410721283, 118.91870681028858, 1, 1, 2, 0, 0, 3, 3, 0, 2, 0, 4, 0, 4, 0, 2, 310995.1301430597);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Bear', 'Fish', 'Siamese Fighting Fish', 'Blue', 23.647674624250563, 'Male', 121.91784099273389, 141.67666487527393, 3, 3, 4, 2, 3, 2, 0, 1, 4, 1, 4, 2, 4, 0, 2, 74133.38799956482);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Mika', 'Horse', 'Paso Fino', 'White', 22.631740253801, 'Male', 153.20526790813642, 158.733596409946, 1, 1, 0, 2, 3, 0, 0, 3, 4, 1, 4, 4, 4, 2, 1, 130472.22032255938);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'Jasmine', 'Bird', 'Cockatoos', 'Blue', 18.902240381421887, 'Female', 39.567554551425886, 19.561473430691922, 2, 2, 1, 0, 1, 4, 0, 3, 0, 1, 0, 4, 1, 0, 2, 262070.9925794774);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Bodie', 'Fish', 'Siamese Fighting Fish', 'Black', 8.051835088366406, 'Male', 29.180605613778173, 153.3678416048984, 0, 4, 1, 0, 1, 2, 1, 1, 3, 0, 2, 0, 3, 2, 2, 77422.51667039387);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Luke', 'Fish', 'Goldfish', 'Red', 18.2305149066941, 'Female', 8.13597653569186, 15.340310204702, 2, 2, 0, 2, 4, 2, 2, 1, 1, 3, 3, 2, 4, 0, 2, 129993.83365362679);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Mister Tiggywinkles', 'Bird', 'Cockatoos', 'Black', 3.9313656870141402, 'Female', 182.06884713290142, 97.58260413378696, 2, 0, 1, 4, 0, 3, 1, 3, 1, 2, 4, 2, 4, 2, 0, 169269.19347075658);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Arnold', 'Hamster', 'Winter White', 'Green', 4.947491465667406, 'Male', 133.9458252261743, 33.24779087242272, 0, 2, 3, 0, 0, 1, 1, 0, 2, 4, 3, 4, 1, 2, 2, 65612.8478915025);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Balou', 'Dog', 'Husky', 'Black', 15.648670913872598, 'Female', 107.64882428054104, 160.82514199869718, 1, 4, 0, 3, 2, 0, 1, 3, 0, 2, 4, 2, 2, 2, 2, 423460.0657266407);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Paddington', 'Fish', 'Green Swordtail', 'Red', 15.792932711413965, 'Male', 87.36877911325745, 65.08977517691544, 3, 0, 4, 1, 2, 1, 1, 2, 2, 4, 0, 4, 3, 2, 0, 133393.54525409883);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Shane', 'Cat', 'Ragdoll', 'Blue', 20.348957572846118, 'Male', 34.473855026742655, 198.2154826432811, 0, 1, 4, 1, 2, 0, 0, 0, 3, 0, 0, 3, 1, 1, 1, 85085.40551607241);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Nate', 'Hamster', 'Syrian', 'Brown', 1.3278005910941508, 'Female', 176.5149647011191, 26.068827693212526, 4, 0, 1, 3, 0, 3, 3, 2, 3, 0, 2, 4, 1, 0, 1, 94775.0675915845);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Nico', 'Rabbit', 'American Fuzzy Lop', 'Red', 18.78446474340207, 'Female', 120.86313179803602, 76.74115132762049, 1, 0, 4, 3, 2, 2, 0, 4, 2, 2, 2, 2, 0, 4, 1, 148830.01290492158);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'HuckFinn', 'Horse', 'Thoroughbred', 'Black', 11.898861703411653, 'Female', 132.7474194671108, 23.046805123717697, 1, 1, 2, 3, 1, 0, 3, 0, 3, 0, 1, 3, 0, 0, 2, 236282.61346695916);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Gibson', 'Hamster', 'Chinese', 'Red', 25.829747150320056, 'Female', 77.41721878929792, 20.367736620749962, 3, 1, 0, 1, 3, 0, 4, 2, 1, 1, 2, 0, 0, 4, 2, 417924.5821740582);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Balou', 'Dog', 'Husky', 'Gray', 14.56034798528958, 'Female', 180.01513078087098, 141.55458803868575, 0, 3, 1, 0, 4, 3, 2, 0, 3, 0, 4, 2, 3, 1, 0, 57088.011643133206);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'Fritz', 'Bird', 'Cockatiels', 'White', 23.11963538633673, 'Female', 173.13542235336814, 49.4373060230285, 3, 3, 0, 3, 4, 2, 4, 3, 1, 1, 2, 0, 0, 0, 2, 271329.5406933599);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Wilbur', 'Bird', 'Cockatiels', 'Black', 7.280728467822954, 'Female', 112.02732307882657, 143.79594875556273, 0, 3, 1, 3, 1, 0, 0, 3, 0, 3, 3, 2, 2, 2, 0, 38071.77485094869);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Pixie', 'Hamster', 'Chinese', 'Spotted', 3.102095800452696, 'Female', 60.7748248783939, 70.2699846348647, 1, 3, 2, 1, 2, 1, 4, 3, 4, 2, 2, 3, 1, 1, 0, 120924.85368909752);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Rusty', 'Cat', 'Persian', 'White', 25.89390594469659, 'Female', 167.044799127038, 185.13633965171684, 1, 1, 4, 3, 2, 4, 2, 2, 0, 0, 2, 0, 0, 2, 2, 349085.2200495151);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Bear', 'Dog', 'German Shepard', 'Black', 8.63781830256547, 'Male', 41.61028255505003, 96.59332976249601, 0, 2, 2, 1, 4, 1, 4, 1, 0, 1, 3, 0, 2, 0, 0, 212774.2879336724);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Phoenix', 'Hamster', 'Winter White', 'Red', 14.148462808937092, 'Male', 196.02702972702136, 127.13338185426136, 2, 3, 3, 2, 3, 2, 2, 2, 3, 2, 1, 4, 4, 4, 0, 155960.3097405314);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Landon', 'Horse', 'Barb', 'Black', 28.458079988367125, 'Female', 109.19435885575085, 46.275469250226145, 4, 3, 4, 2, 2, 1, 3, 1, 4, 2, 0, 1, 3, 4, 2, 295874.6902090504);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Maya', 'Bird', 'Budgerigars', 'Green', 22.953118675737905, 'Female', 100.06550589640452, 59.20701423024973, 4, 3, 0, 3, 3, 4, 2, 0, 3, 2, 0, 4, 2, 1, 0, 157122.7439775112);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Kai', 'Cat', 'Siamese', 'Yellow', 28.746611470959227, 'Male', 98.32416375719298, 179.2733583329063, 2, 4, 0, 4, 0, 2, 4, 1, 3, 1, 2, 2, 1, 1, 2, 382340.6451137458);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Donovan', 'Rabbit', 'Florida White', 'Blue', 19.411732208402988, 'Female', 142.89256125929106, 40.00250331701767, 0, 4, 3, 3, 1, 2, 4, 4, 4, 1, 1, 2, 1, 0, 0, 260181.38385727257);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Cessa', 'Rabbit', 'Britannia Petite', 'Spotted', 18.818844802293302, 'Female', 121.15194459593914, 77.06478180163336, 4, 0, 4, 1, 3, 3, 4, 3, 3, 0, 1, 2, 2, 0, 0, 427013.81346064643);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Laguna', 'Rabbit', 'Britannia Petite', 'Black', 0.7981059762516457, 'Male', 135.9179564570697, 42.41620835910571, 3, 0, 2, 0, 2, 2, 2, 2, 1, 3, 1, 1, 2, 1, 2, 128309.26129826892);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Kingston', 'Rabbit', 'Florida White', 'Brown', 23.664959806558187, 'Male', 126.91538733845373, 147.8550485831803, 2, 1, 3, 0, 2, 0, 2, 0, 2, 4, 3, 1, 0, 3, 1, 178332.37647743666);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Kaly', 'Rabbit', 'Florida White', 'Yellow', 15.606567007871035, 'Female', 123.78872716638638, 33.26950753632632, 3, 3, 2, 3, 0, 1, 4, 2, 2, 1, 2, 0, 2, 2, 0, 366382.54309420055);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'Potter', 'Dog', 'German Shepard', 'Yellow', 5.300564417235258, 'Female', 76.4451113753324, 105.67814753638172, 0, 0, 4, 2, 3, 2, 1, 2, 0, 1, 2, 2, 2, 4, 2, 231097.56616929203);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Mitzi', 'Hamster', 'Winter White', 'Spotted', 6.029288152739404, 'Male', 125.11096123870338, 27.65156815202783, 4, 2, 2, 0, 3, 2, 4, 4, 0, 1, 2, 3, 3, 4, 1, 162570.2747841397);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Jeeves', 'Cat', 'Siamese', 'Brown', 10.906990301673623, 'Female', 156.99838522292202, 151.2106004389151, 2, 2, 4, 4, 1, 4, 2, 3, 0, 2, 1, 3, 1, 4, 2, 355671.0970781689);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Bagel', 'Bird', 'Budgerigars', 'Yellow', 19.310871524474386, 'Female', 138.32325676661378, 151.72545284224063, 3, 4, 4, 2, 2, 1, 1, 2, 3, 1, 2, 1, 3, 4, 2, 149915.18779303657);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Biscuit', 'Rabbit', 'Britannia Petite', 'Brown', 23.81006240048308, 'Male', 70.8525571852717, 14.046829330203856, 1, 1, 1, 0, 0, 1, 4, 1, 4, 2, 0, 3, 2, 1, 0, 109585.42323650207);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Landon', 'Hamster', 'Chinese', 'Black', 29.209774797043977, 'Male', 124.56022287972833, 66.42741070863596, 3, 0, 2, 1, 3, 0, 1, 3, 4, 0, 0, 0, 0, 2, 0, 166482.26965168145);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Luna', 'Rabbit', 'Dwarf Hotot', 'Spotted', 27.369106817694625, 'Male', 144.018548330382, 69.3342971911169, 2, 3, 3, 4, 0, 2, 3, 4, 1, 0, 1, 4, 1, 4, 2, 4192.492005731412);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Persia', '665-508-3288', '26 Bank Cres, Nepean, ON, Canada', 'FwuEX@gmail.com', 1, 0, 2, 53.55471894674818, 118074.70746749007, 50);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Sophie', 'Cat', 'Persian', 'Red', 22.93982248606232, 'Male', 163.76999697061765, 175.60275330992638, 1, 0, 1, 1, 1, 0, 1, 4, 3, 0, 2, 4, 4, 0, 0, 403594.389962537);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kassie', '570-364-2484', '18 5th Rd, Nepean, ON, Canada', 'aAlRL@gmail.com', 1, 4, 2, 57.98133852994853, 302106.15945287485, 51);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'Bella', 'Hamster', 'Syrian', 'Spotted', 24.095715825697784, 'Female', 61.903833111105214, 96.50241012587068, 2, 3, 3, 2, 2, 2, 0, 3, 4, 4, 1, 3, 0, 2, 2, 105680.41481464052);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Jazzy', '792-680-2854', '1 32nd St, Montreal, ON, Canada', 'FKZTl@gmail.com', 1, 2, 3, 41.831648692109596, 33515.41453885108, 52);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Samsung', 'Fish', 'Goldfish', 'Spotted', 13.888692629773363, 'Female', 122.58460170330818, 45.686536783615146, 3, 1, 0, 1, 0, 1, 4, 3, 3, 3, 3, 3, 0, 1, 2, 86295.18535058305);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Spot', '582-994-2352', '45 Bank St, Cornwall, ON, Canada', 'ncDho@gmail.com', 3, 1, 3, 26.60235053762281, 296504.59463859035, 53);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Keanna', 'Bird', 'Cockatoos', 'Gray', 27.010236821912095, 'Male', 191.12427352162462, 97.44103416508392, 1, 0, 3, 2, 3, 0, 4, 4, 3, 4, 4, 1, 4, 0, 2, 34364.83687072393);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Syrah', '489-420-260', '15 Queen St, Ottawa, ON, Canada', 'tAjZz@gmail.com', 4, 1, 4, 28.047965911244372, 130763.44613663248, 54);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Buffy', 'Hamster', 'Winter White', 'Black', 6.877965225323913, 'Male', 154.99371656962006, 108.20939317294221, 4, 4, 0, 4, 1, 4, 4, 0, 4, 3, 0, 2, 0, 4, 1, 38992.14373341064);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Hudson', '942-690-3780', '11 5th Rd, Toronto, ON, Canada', 'lJGBj@gmail.com', 0, 4, 3, 63.87032855915892, 70855.42392076022, 55);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Graysen', 'Cat', 'Persian', 'Brown', 15.268672984995408, 'Male', 141.36813724280094, 44.062617854691545, 3, 0, 4, 1, 4, 1, 1, 3, 2, 1, 4, 4, 1, 0, 1, 303859.5537224876);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Redford', '985-731-7913', '38 Queen Ave, Toronto, ON, Canada', 'bXMHF@gmail.com', 3, 1, 4, 19.649705513366015, 470899.2868818203, 56);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'Merlot', 'Bird', 'Budgerigars', 'Blue', 5.373340003942291, 'Female', 144.4126280885662, 178.16878914780742, 1, 4, 1, 2, 3, 0, 4, 0, 3, 3, 1, 4, 4, 3, 0, 433119.8105130932);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Nanda', '278-740-8790', '8 32nd St, Toronto, ON, Canada', 'XMGvX@gmail.com', 0, 0, 1, 28.713944353785916, 250151.05050766037, 57);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Holly', 'Hamster', 'Winter White', 'Red', 17.019063291492266, 'Female', 151.91443949400391, 59.091212970754945, 2, 2, 1, 0, 3, 0, 0, 2, 1, 2, 1, 3, 2, 3, 0, 233579.74459015537);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mooshie', '867-911-2281', '25 32nd Ave, Montreal, ON, Canada', 'rAqbn@gmail.com', 4, 0, 0, 23.569817547173244, 132952.9562804355, 58);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, health, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Willow', 'Cat', 'Munchkin', 'Red', 14.25237780143975, 'Male', 89.03585152781342, 96.03485284041093, 3, 3, 1, 1, 0, 4, 4, 4, 2, 0, 2, 3, 0, 4, 1, 455796.263200996);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Lilypie', '324-503-1153', '8 Bank Rd, Montreal, ON, Canada', 'JBpJA@gmail.com', 1, 1, 4, 68.57723070590608, 201403.12364806118, 59);
