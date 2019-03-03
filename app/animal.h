#ifndef ANIMAL_H
#define ANIMAL_H
/**
 * Types and operations specific to animals are stored here.
 */

#include <array>
#include <QString>
#include <QList>

/// An enum representing the total number of available animal types
enum AnimalType {
    Dog,
    Cat,
    Horse,
    Rabbit,
//    GuinePig,
//    Hamster,
//    Bird,
//    Fish,
//    Reptile,
};

/// A function which returns a list of AnimalType variants
QList<AnimalType> animal_type_variants();

/// A function which returns a list of a string representations of AnimalType variants
QList<QString> animal_type_variants_str();

/// An enum representing the possible gender choices for an animal
enum Gender {
    Male,
    Female,
};

/// A function which returns a list of Gender variants
QList<Gender> gender_variants();

/// A function which returns a list of a string representations of Gender variants
QList<QString> gender_variants_str();

//enum DogBreed {
//    Labrador,
//    Husky,
//};
//enum CatBreed {
//    MaineCoon,
//    Persian,
//    Siamese,
//};

/// Animal entity object
class Animal
{
public:
    Animal() : name(""), type(Dog), breed(""), color(""), age(0), gender(Male), weight(0), height(0) {}

    AnimalType getType() const { return type; }
    void setType(const AnimalType &value) { type = value; }

    QString getTypeString() const;
    void setTypeString(const QString &value);

    QString getBreed() const { return breed; }
    void setBreed(const QString &value) { breed = value; }

    QString getColor() const { return color; }
    void setColor(const QString &value) { color = value; }

    double getAge() const { return age; }
    void setAge(const double &value) { age = value; }

    Gender getGender() const { return gender; }
    void setGender(const Gender &value) { gender = value; }

    QString getGenderString() const;
    void setGenderString(const QString &value);

    double getWeight() const { return weight; }
    void setWeight(double value) { weight = value; }

    double getHeight() const { return height; }
    void setHeight(double value) { height = value; }

    QString getName() const { return name; }
    void setName(const QString &value) { name = value; }


private:
    // physical attributes
    QString name;
    AnimalType type;
    QString breed;
    QString color;
    double age;
    Gender gender;
    double weight;
    double height;

    // non-physical attributes
    // corresponds to the values of:
    // Libido, Aggressiveness, Extroversion, Temper, Obedience, Endurance, Activity, Impulsivity, Distractibility, Adaptability, Regularity, Intelligence
    std::array<double, 12> npa;
};

#endif // ANIMAL_H
