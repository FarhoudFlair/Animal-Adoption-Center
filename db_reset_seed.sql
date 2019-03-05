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
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (0, 'Fuse', 'Horse', 'Paso Fino', 'White', 1.3909446097411058, 'Male', 17.15058061503286, 129.76034183750198, 4, 2, 4, 0, 0, 4, 4, 2, 4, 0, 4, 1, 3, 1, 230341.32994713206);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (1, 'Shadow', 'Hamster', 'Syrian', 'Yellow', 28.164193523482858, 'Female', 177.7632977163363, 79.66175329196562, 1, 4, 3, 2, 0, 2, 2, 4, 3, 1, 3, 4, 1, 1, 377914.2402515966);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (2, 'Fuse', 'Horse', 'Paso Fino', 'Green', 24.62810723433168, 'Male', 22.991870238795602, 104.27167920308212, 1, 1, 3, 0, 0, 1, 3, 2, 1, 3, 3, 4, 4, 2, 456988.9938202942);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (3, 'Jon Snow', 'Dog', 'Husky', 'Yellow', 20.26823485961591, 'Female', 107.96483673830227, 18.835191909623674, 4, 3, 0, 2, 4, 3, 2, 4, 3, 3, 2, 4, 0, 0, 173818.18226330064);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (4, 'Tallulah', 'Dog', 'Husky', 'Green', 9.330915845081837, 'Male', 43.56339137622222, 171.06331295615277, 3, 4, 2, 1, 4, 3, 1, 3, 4, 0, 3, 2, 2, 0, 188980.32654102208);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (5, 'Guinness', 'Rabbit', 'American Fuzzy Lop', 'Gray', 1.3796045896968185, 'Male', 144.77126185540098, 10.614866940430945, 4, 0, 4, 4, 4, 4, 2, 1, 2, 1, 0, 3, 4, 2, 253806.03605089692);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (6, 'Balou', 'Bird', 'African Grey Parrots', 'Gray', 10.740521989956633, 'Male', 41.36577343918084, 14.055073615656125, 0, 3, 2, 3, 0, 2, 2, 2, 1, 1, 4, 1, 0, 1, 150735.92274640166);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (7, 'Larissa', 'Rabbit', 'Florida White', 'Green', 12.754263585920853, 'Male', 171.6350468210247, 172.06938776870402, 3, 1, 0, 1, 1, 3, 2, 2, 4, 4, 4, 0, 0, 0, 93530.86430466395);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (8, 'Simone', 'Hamster', 'Robo', 'White', 24.900399701063655, 'Male', 128.6095854368464, 17.11510719830452, 0, 3, 1, 0, 3, 1, 3, 1, 0, 4, 1, 0, 1, 1, 300532.89593199675);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (9, 'Chandler', 'Bird', 'African Grey Parrots', 'Blue', 1.5556541260733416, 'Male', 33.53451187663706, 87.44956478875908, 3, 4, 3, 2, 1, 3, 0, 4, 0, 2, 1, 0, 1, 1, 473353.6833766809);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (10, 'Bono', 'Hamster', 'Winter White', 'Black', 13.585348430679131, 'Female', 8.830612204117875, 114.12349253910145, 1, 4, 0, 4, 0, 2, 1, 2, 1, 2, 2, 1, 3, 0, 312414.7067226507);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (11, 'Tank', 'Horse', 'Paso Fino', 'White', 28.612355147447754, 'Male', 190.8435421376382, 171.96367829721217, 3, 1, 1, 0, 3, 4, 3, 1, 0, 2, 3, 0, 3, 0, 342139.8076237857);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (12, 'Rocky', 'Horse', 'Thoroughbred', 'Green', 25.13962572762462, 'Female', 153.95512477723628, 163.8844181788226, 4, 2, 3, 4, 4, 4, 2, 4, 4, 4, 0, 4, 4, 1, 381922.9412329616);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (13, 'HuckFinn', 'Dog', 'Husky', 'Brown', 2.876172615765886, 'Female', 29.432396161242536, 127.90739485051257, 3, 3, 1, 3, 1, 0, 0, 4, 1, 0, 2, 3, 0, 0, 374940.924432576);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (14, 'Keesha', 'Fish', 'Green Swordtail', 'Spotted', 9.426351590873331, 'Male', 111.54584640587856, 175.6398300280174, 1, 4, 1, 4, 1, 1, 1, 2, 1, 3, 2, 0, 3, 2, 90335.80258351512);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (15, 'Nanda', 'Fish', 'Green Swordtail', 'Green', 29.88916983455319, 'Male', 78.89637196354045, 161.66704415551496, 0, 1, 3, 4, 3, 4, 3, 4, 0, 2, 1, 2, 3, 1, 459780.54422633664);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (16, 'Lola', 'Cat', 'Scottish Fold', 'Spotted', 27.858210214727865, 'Male', 88.11074313146854, 78.43894750316504, 4, 2, 1, 3, 1, 2, 0, 1, 2, 4, 3, 3, 3, 1, 200586.28690624348);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (17, 'RobinHood', 'Horse', 'Barb', 'Yellow', 29.37249243640406, 'Male', 64.51088926540567, 169.70880330496485, 4, 3, 4, 4, 3, 4, 1, 2, 2, 4, 1, 3, 0, 0, 227819.35537536498);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (18, 'Margo', 'Fish', 'Goldfish', 'Gray', 2.1609074594835653, 'Female', 85.80891855698745, 72.72197160949554, 4, 3, 2, 2, 0, 3, 3, 4, 4, 1, 2, 4, 0, 2, 196597.09821475027);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (19, 'Timber', 'Hamster', 'Winter White', 'White', 11.105265483667402, 'Male', 182.2508118399453, 43.60787921860105, 3, 1, 2, 1, 2, 3, 4, 2, 3, 2, 1, 3, 0, 2, 497118.66399261315);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (20, 'Mika', 'Rabbit', 'Dwarf Hotot', 'White', 20.219003064395462, 'Female', 44.055432958625225, 88.28065648465177, 2, 2, 2, 4, 0, 1, 2, 2, 0, 0, 4, 0, 3, 1, 372886.21451781894);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (21, 'Spark', 'Hamster', 'Chinese', 'White', 22.147154221224117, 'Female', 13.149179979546815, 75.2532262265358, 0, 2, 4, 0, 3, 1, 3, 3, 4, 3, 2, 3, 0, 2, 98768.70569563874);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (22, 'Greystoke', 'Bird', 'Cockatiels', 'Gray', 4.739209158066801, 'Male', 151.1779325990961, 196.10252449486185, 4, 2, 1, 3, 1, 3, 2, 0, 1, 4, 0, 3, 0, 0, 282315.6562022512);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (23, 'Barney', 'Cat', 'Munchkin', 'Red', 6.435683417104408, 'Female', 24.146055836813236, 120.77682768440577, 3, 2, 4, 3, 1, 1, 2, 3, 4, 1, 3, 2, 1, 2, 133585.31464299426);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (24, 'Iris', 'Rabbit', 'Dwarf Hotot', 'White', 6.238890621055694, 'Female', 60.85274749145468, 75.37003767345075, 2, 1, 0, 2, 3, 2, 2, 0, 3, 3, 2, 1, 3, 1, 395653.2929982549);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (25, 'Scotty', 'Fish', 'Goldfish', 'Red', 13.646997491094332, 'Female', 173.1447025485968, 89.52688235885807, 1, 0, 4, 1, 1, 3, 3, 0, 4, 3, 0, 3, 2, 2, 44705.348006451844);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (26, 'Sugar', 'Fish', 'Siamese Fighting Fish', 'Gray', 17.04457134968617, 'Male', 87.03051342237265, 165.8257503357702, 2, 2, 3, 1, 3, 4, 4, 3, 1, 1, 3, 1, 1, 1, 397804.3495092518);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (27, 'Rico', 'Bird', 'Budgerigars', 'White', 22.134026498346422, 'Female', 160.52112858979618, 141.76601584346304, 4, 1, 3, 0, 2, 3, 3, 3, 2, 4, 0, 1, 0, 2, 263289.10323968675);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (28, 'Tibbs', 'Rabbit', 'Dutch', 'Brown', 10.904233889202162, 'Male', 180.11447288379074, 184.48148947867026, 3, 1, 3, 4, 4, 0, 4, 4, 2, 4, 1, 1, 2, 2, 15804.85655893423);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (29, 'Carter', 'Bird', 'Cockatoos', 'Brown', 2.745597272109598, 'Male', 149.5674429266988, 43.49547037054151, 1, 3, 1, 1, 0, 2, 3, 3, 1, 0, 0, 4, 0, 1, 376231.1394057925);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (30, 'China', 'Bird', 'Cockatiels', 'Brown', 12.216883246107638, 'Male', 136.56363409530752, 138.00499633349392, 4, 3, 1, 3, 4, 1, 3, 3, 3, 1, 1, 4, 3, 1, 390756.7392567592);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (31, 'Greystoke', 'Horse', 'Trakehner', 'Red', 24.087136876990115, 'Female', 129.82679639388238, 139.15618420833704, 0, 3, 2, 1, 2, 3, 0, 0, 4, 2, 3, 4, 2, 0, 298947.7301867329);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (32, 'Simon', 'Hamster', 'Syrian', 'Yellow', 6.314609017717328, 'Female', 196.8422205264851, 113.22564096306616, 4, 2, 3, 1, 4, 0, 0, 0, 2, 0, 1, 0, 0, 2, 435723.5753446158);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (33, 'Greystoke', 'Dog', 'German Shepard', 'Black', 21.77481441252118, 'Female', 63.58497332998593, 34.22476970625509, 2, 0, 2, 2, 0, 1, 0, 0, 1, 4, 0, 1, 4, 2, 94876.52977347375);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (34, 'Malble', 'Bird', 'Budgerigars', 'Green', 15.846954465057804, 'Male', 194.6587372830637, 45.102814444352326, 1, 0, 0, 4, 1, 0, 0, 1, 4, 0, 2, 0, 4, 0, 125524.24045593686);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (35, 'Ed', 'Hamster', 'Robo', 'Blue', 13.53974520783516, 'Male', 155.17999871294353, 80.90017824849949, 4, 2, 4, 3, 4, 4, 4, 4, 0, 4, 1, 2, 2, 1, 112894.42065274632);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (36, 'Snoopy', 'Hamster', 'Syrian', 'Black', 14.554661782459334, 'Male', 52.524977376862196, 89.5514207933007, 4, 0, 4, 1, 0, 1, 1, 2, 4, 3, 0, 2, 1, 2, 281923.8210469957);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (37, 'Buddy', 'Cat', 'Munchkin', 'Yellow', 27.73688509358623, 'Male', 37.19749200264271, 128.17310000932133, 0, 2, 0, 2, 3, 1, 1, 1, 4, 1, 0, 3, 3, 0, 126193.16625549096);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (38, 'Lefty', 'Hamster', 'Robo', 'Brown', 25.01982318702048, 'Male', 174.88155327436, 194.59437793887074, 3, 2, 2, 2, 2, 3, 2, 2, 1, 2, 0, 2, 1, 2, 398277.2591086326);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (39, 'Sophie', 'Dog', 'Labrador', 'Red', 8.258864540222365, 'Male', 199.16570199417893, 60.54183340054041, 2, 2, 1, 1, 0, 0, 2, 1, 0, 0, 1, 0, 2, 0, 228543.16437183783);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (40, 'Harry', 'Cat', 'Munchkin', 'Blue', 13.934058859832728, 'Female', 41.944746459548064, 88.82021059666131, 2, 1, 4, 3, 1, 0, 0, 3, 1, 2, 1, 0, 3, 2, 331203.81891541876);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (41, 'Mitzi', 'Dog', 'Husky', 'Gray', 7.118005783484291, 'Male', 79.46286638040718, 125.17619749296912, 4, 1, 0, 2, 4, 4, 4, 2, 3, 1, 1, 3, 0, 2, 382807.59448181256);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (42, 'Snooky', 'Rabbit', 'Florida White', 'Blue', 18.590917492788044, 'Male', 29.57511058362814, 95.78977094350682, 1, 0, 3, 1, 0, 3, 2, 0, 1, 1, 4, 2, 2, 0, 184867.79314758125);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (43, 'Bella', 'Horse', 'Thoroughbred', 'Brown', 6.886971527103139, 'Male', 49.056127628259, 94.61311501953993, 2, 1, 1, 2, 1, 2, 2, 1, 2, 0, 1, 4, 3, 0, 207959.08329588172);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (44, 'China', 'Horse', 'Trakehner', 'Brown', 23.526506632459704, 'Male', 147.14371095167036, 173.10929186355264, 0, 4, 4, 2, 4, 3, 3, 4, 3, 2, 1, 1, 2, 2, 101913.60480285561);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (45, 'Logan', 'Horse', 'Trakehner', 'Spotted', 26.599140608736633, 'Male', 191.19645326115239, 54.52944621730762, 3, 3, 4, 2, 0, 0, 4, 2, 1, 4, 3, 4, 1, 0, 261114.31786949543);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (46, 'Monkey', 'Fish', 'Goldfish', 'Gray', 6.887329463719584, 'Male', 162.46908906181017, 168.95621826884783, 3, 4, 3, 2, 4, 1, 1, 0, 1, 3, 3, 4, 3, 0, 459794.34617402335);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (47, 'Tangerine', 'Cat', 'Scottish Fold', 'Yellow', 2.56676954069223, 'Female', 21.133143654112335, 98.75867410773527, 2, 1, 0, 3, 2, 0, 3, 0, 4, 3, 3, 1, 2, 0, 306643.17783794116);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (48, 'Logan', 'Bird', 'Cockatiels', 'Brown', 3.2880267534751626, 'Female', 116.17490284157111, 142.91789569899032, 3, 1, 4, 3, 2, 0, 0, 3, 1, 0, 0, 3, 1, 0, 258422.89931538547);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (49, 'Skitty', 'Dog', 'Husky', 'Red', 5.398708029335564, 'Male', 67.90831106260701, 171.80614738325332, 1, 4, 0, 0, 2, 2, 3, 2, 3, 0, 3, 0, 4, 2, 164291.08613056169);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (50, 'Holly', 'Fish', 'Siamese Fighting Fish', 'Brown', 18.586313833797927, 'Male', 174.42156779754092, 64.13884698904008, 1, 3, 2, 4, 1, 3, 1, 2, 2, 1, 4, 4, 3, 1, 218407.72950883696);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Mischa', '577-363-4184', '2 32nd St, Ottawa, ON, Canada', 'YohuA@gmail.com', 2, 0, 2, 73.4124646266724, 195174.79736533182, 50);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (51, 'Tucke', 'Fish', 'Siamese Fighting Fish', 'Brown', 14.163987113761028, 'Female', 54.20451071764342, 120.84460016011411, 2, 3, 0, 0, 0, 0, 3, 0, 4, 1, 1, 0, 1, 0, 147621.10966180442);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Paulie', '754-585-4243', '1 Woodridge St, Montreal, ON, Canada', 'iwfnM@gmail.com', 2, 1, 4, 61.89076550900493, 126989.67274333928, 51);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (52, 'HuckFinn', 'Fish', 'Goldfish', 'Spotted', 14.329184031879317, 'Male', 62.980548359391534, 102.92894959962447, 4, 3, 4, 4, 3, 2, 0, 3, 2, 0, 0, 0, 1, 1, 85472.52818793182);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Beck', '867-621-459', '7 Woodridge Ave, Ottawa, ON, Canada', 'nseea@gmail.com', 0, 2, 3, 63.21282245172703, 225862.9637796985, 52);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (53, 'Owen', 'Dog', 'Labrador', 'Yellow', 19.989972320799907, 'Male', 38.46504163413449, 142.68939678691444, 2, 4, 4, 2, 0, 0, 2, 0, 3, 0, 1, 3, 3, 1, 372748.4265020693);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Oliver', '789-850-8767', '2 Bank Rd, Nepean, ON, Canada', 'SsYoF@gmail.com', 3, 3, 2, 67.32929410362809, 178578.94142906572, 53);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (54, 'Buddy', 'Fish', 'Goldfish', 'Blue', 10.35967329092036, 'Male', 128.25987408275705, 170.99931074537798, 4, 1, 0, 1, 3, 4, 1, 3, 1, 0, 0, 0, 2, 1, 264721.09994109697);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Ed', '500-490-280', '48 Paterson St, Montreal, ON, Canada', 'MUBwT@gmail.com', 3, 0, 2, 55.91293926580951, 151151.1482391898, 54);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (55, 'Bella', 'Horse', 'Trakehner', 'Yellow', 15.477680003145338, 'Female', 120.38140856971697, 132.25646476512395, 1, 1, 0, 1, 4, 4, 1, 4, 4, 4, 1, 2, 3, 2, 191767.99153681085);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Fiona', '228-723-7729', '29 5th St, Ottawa, ON, Canada', 'fnLEn@gmail.com', 1, 4, 2, 73.83331061897525, 189414.52203794374, 55);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (56, 'Tallulah', 'Fish', 'Green Swordtail', 'Red', 1.6968656289378974, 'Female', 137.98626424883568, 105.52663985758308, 1, 1, 0, 0, 0, 0, 4, 3, 0, 4, 2, 0, 0, 2, 225753.87999567774);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Olive', '684-227-1247', '38 32nd Rd, Nepean, ON, Canada', 'rozyk@gmail.com', 3, 0, 4, 27.755277556360372, 397762.65492570365, 56);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (57, 'HuckFinn', 'Dog', 'Husky', 'White', 24.43183031728131, 'Male', 142.89507743458933, 186.12045964020075, 4, 2, 3, 2, 3, 2, 4, 3, 1, 4, 3, 2, 0, 0, 225778.61440024135);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Potter', '962-759-6989', '12 54th St, Toronto, ON, Canada', 'kkRpv@gmail.com', 2, 0, 1, 49.388994392712945, 233604.37969527795, 57);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (58, 'Acorn', 'Hamster', 'Syrian', 'Spotted', 3.7373260145004856, 'Female', 72.74959381447297, 132.96645675868865, 4, 3, 2, 3, 2, 0, 2, 0, 0, 4, 0, 4, 1, 1, 355355.94433888106);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Kaya', '540-312-9985', '47 Bank Cres, Ottawa, ON, Canada', 'OQmTK@gmail.com', 2, 0, 2, 59.78157239191442, 269543.95751047204, 58);
INSERT OR IGNORE INTO animal
    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)
VALUES
    (59, 'Dallas', 'Rabbit', 'American Fuzzy Lop', 'Yellow', 27.56656652532264, 'Female', 157.3913155349622, 10.994452770471163, 1, 4, 2, 2, 0, 2, 2, 0, 2, 3, 2, 2, 2, 1, 435221.4842259783);
INSERT OR IGNORE INTO client
    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
VALUES
    ('Rocky', '114-570-8387', '3 Paterson St, Nepean, ON, Canada', 'pMBCZ@gmail.com', 3, 4, 2, 57.93482673991717, 372158.7392585971, 59);
