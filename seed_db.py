import string
import sys
from random import choices, uniform, choice, randint
from itertools import count

NUM_ANIMALS = 50;
NUM_CLIENTS = 10;

names = ['Bob', 'Spot', 'Tangerine', 'Mister Tiggywinkles', 'Chloe Alice', 'Simon', 'Simone', 'Jon Snow', 'Pumba', 'Samsung', 'Robert', 'Paul', 'Caustic', 'Fibre', 'Pablo', 'Apple', 'Hunter', 'Arya', 'Sansa', 'Harry', 'Potter', 'Ron', 'Farhoud', 'Hermione', 'Emma', 'Peaches', 'Arnold', 'Max', 'Charlie', 'Cooper', 'Buddy', 'Jack', 'Rocky', 'Oliver', 'Bear', 'Duke', 'Tucke', 'Bella', 'Lucy', 'Daisy', 'Luna', 'Lola', 'Sadie', 'Molly', 'Maggie', 'Bailey', 'Sophie', 'Acorn', 'Alvin', 'Asia', 'Audi', 'Bagel', 'Balou', 'Barclay', 'Barney', 'Beck', 'Bellatrix', 'Bianca', 'Biloxi', 'Birdie', 'Biscuit', 'Blanca', 'Bobbafett', 'Bodie', 'Bono', 'Booboo', 'Bootsie', 'Bordeaux', 'Brandy', 'Bren', 'Bronco', 'Bruin', 'Bubbles', 'Buffy', 'Burt', 'Butler', 'Button', 'Calvin', 'Candy', 'Carter', 'Cece', 'Cessa', 'Chandler', 'Chaucer', 'Chevy', 'China', 'Choochoo', 'Cisco', 'Claire', 'Cleopatra', 'Clooney', 'Coco', 'Connor', 'Cosmo', 'Crosby', 'Cupcake', 'Daisy', 'Dallas', 'Daphne', 'Delilah', 'Diva', 'Doc', 'Domino', 'Donna', 'Donovan', 'Dulus', 'Dutch', 'Ebony', 'Ed', 'Elton', 'Elwood', 'Ernie', 'Faith', 'Faya', 'Felix', 'Fig', 'Fiona', 'Foxy', 'Fritz', 'Fuse', 'Giblet', 'Gibson', 'Gingi', 'Goofy', 'Graysen', 'Greystoke', 'Guinness', 'Hershey', 'Holly', 'Honey', 'Huck' 'Finn', 'Hudson', 'Hutch', 'Ike', 'Indira', 'Iris', 'Ivory', 'Jade', 'Jasmine', 'Jasper', 'Jazzy', 'Jeeves', 'Jenna', 'Jenne', 'Joy', 'Kai', 'Kalua', 'Kaly', 'Kassie', 'Kaya', 'Keanna', 'Keesha', 'Keiko', 'Kiefer', 'Kingston', 'Koby', 'Kona', 'Laguna', 'Landon', 'Larissa', 'Lefty', 'Leia', 'Lexi', 'Lilbit', 'Lilypie', 'Linus', 'Logan', 'Lola', 'Luca', 'Lucy', 'Luke', 'Madonna', 'Malble', 'Malibu', 'Margo', 'Marshmellow', 'Marti', 'Max', 'Maya', 'Meadow', 'Mercedes', 'Merlot', 'Merry', 'Mia', 'Midnight', 'Midori', 'Mika', 'Milan', 'Mira', 'Mischa', 'Mitzi', 'Moby', 'Mochi', 'Monet', 'Monkey', 'Mooshie', 'Mozart', 'Mr' 'Big', 'Muggles', 'Mulder', 'Mulligan', 'Murphy', 'Mylo', 'Nanda', 'Nate', 'Nell', 'Niana', 'Nico', 'Noodle', 'Nugget', 'Olive', 'Onyx', 'Otis', 'Owen', 'Ozzie', 'Paddington', 'Paisley', 'Paris', 'Parker', 'Paulie', 'Pazzo', 'Peanut', 'Pearl', 'Pepper', 'Persia', 'Pesci', 'Phoenix', 'Picasso', 'Pinot', 'Pipsie', 'Pixie', 'Porche', 'Quattro', 'Ramona', 'Redford', 'Reece', 'Rico', 'Robin' 'Hood', 'Rocco', 'Rocky', 'Romeo', 'Roxie', 'Rufus', 'Rusty', 'Scotty', 'Scout', 'Shadow', 'Shaggy', 'Shane', 'Shaq', 'Sheba', 'Silas', 'Skip', 'Skitty', 'Skyler', 'Smitty', 'Snooky', 'Snoopy', 'Sookie', 'Spark', 'Sprite', 'Stitch', 'Strsky', 'Sugar', 'Summer', 'Sunny', 'Sushi', 'Sweetpea', 'Syrah', 'Tallulah', 'Tango', 'Tank', 'Tanner', 'Tatertot', 'Theo', 'Tibbs', 'Timber', 'Tink', 'Toast', 'Toffee', 'Tonka', 'Vegas', 'Wednesday', 'Wilbur', 'Willow', 'Winnie', 'Wolfie', 'Yoshiko', 'Zach', 'Zara', 'Zeke', 'Zelda', 'Zeppelin', 'ZsaZsa']
types = ['Dog', 'Cat', 'Horse', 'Rabbit', 'Hamster', 'Bird', 'Fish']
breeds = {
    'Dog': ['Labrador', 'Husky', 'German Shepard'],
    'Cat': ['Persian', 'Siamese', 'Scottish Fold', 'Ragdoll', 'Munchkin'],
    'Horse': ['Thoroughbred', 'Barb', 'Paso Fino', 'Trakehner'],
    'Rabbit': ['American Fuzzy Lop', 'Britannia Petite', 'Dutch', 'Dwarf Hotot', 'Florida White'],
    'Hamster': ['Syrian', 'Robo', 'Chinese', 'Winter White'],
    'Bird': ['Cockatiels', 'African Grey Parrots', 'Budgerigars', 'Cockatoos'],
    'Fish': ['Siamese Fighting Fish', 'Goldfish', 'Green Swordtail']
}
colors = ['Blue', 'Red', 'Brown', 'Black', 'White', 'Gray', 'Green', 'Spotted', 'Yellow']
sexes = ['Male', 'Female']

places = ['Woodridge', 'Paterson', 'Queen', '32nd', '54th', '5th', 'Bank']
place_types = ['St', 'Rd', 'Ave', 'Cres']
cities = ['Ottawa', 'Nepean', 'Cornwall', 'Toronto', 'Montreal']

def insert_animal(f, aid=None):
    t = choice(types)
    print('INSERT OR IGNORE INTO animal', file=f)
    print('    (id, name, type, breed, color, age, sex, weight, height, libido, aggressiveness, extroversion, temper, obedience, endurance, activeness, impulsivity, distractibility, adaptability, regularity, intelligence, independence, training, cost)', file=f)
    print('VALUES', file=f)
    print("    ({}, '{}', '{}', '{}', '{}', {}, '{}', {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {});".format(
        aid,
        choice(names),
        t,
        choice(breeds[t]),
        choice(colors),
        uniform(0.5, 30),
        choice(sexes),
        uniform(5, 200),
        uniform(5, 200),
        *choices(range(5), k=13),
        choice(range(3)),
        uniform(50, 500000),
    ), file=f)

def insert_client(f, aid):
    print('INSERT OR IGNORE INTO client', file=f)
    print('    (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)', file=f)
    print('VALUES', file=f)
    print("    ('{}', '{:0<3}-{:0<3}-{:0<3}', '{} {} {}, {}, ON, Canada', '{}@gmail.com', {}, {}, {}, {}, {}, {});".format(
        choice(names),
        randint(0, 999), randint(0, 999), randint(0, 9999),
        randint(1, 50), choice(places), choice(place_types), choice(cities),
        ''.join(choices(string.ascii_letters, k=5)),
        *choices(range(5), k=3),
        uniform(18, 80),
        uniform(20000, 500000),
        aid,
    ), file=f)

def main():
    output_file = sys.argv[1]
    with open(output_file, 'a+') as f:
        animal_ids = count()

        for i in range(NUM_ANIMALS):
            insert_animal(f, next(animal_ids))
        
        for i in range(NUM_CLIENTS):
            aid = next(animal_ids)
            insert_animal(f, aid)
            insert_client(f, aid)

if __name__ == '__main__':
    main()