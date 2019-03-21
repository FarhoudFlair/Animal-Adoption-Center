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
    Hamster,
    Bird,
    Fish,
};

/// A function which returns a list of AnimalType variants
QList<AnimalType> animal_type_variants();

/// A function which returns a list of a string representations of AnimalType variants
QList<QString> animal_type_variants_str();

/// An enum representing the possible sex choices for an animal
enum Sex {
    Male,
    Female,
};

/// A function which returns a list of Sex variants
QList<Sex> sex_variants();

/// A function which returns a list of a string representations of Sex variants
QList<QString> sex_variants_str();

/// Animal entity object
class Animal
{
public:
    Animal() : id(0), name(""), type(Dog), breed(""), color(""), age(0), sex(Male), weight(0), height(0), health(0) {}

    int getId() const { return id; }
    void setId(int value) { id = value; }

    // standard getters/setters
    QString getName() const { return name; }
    void setName(const QString &value) { name = value; }

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

    Sex getSex() const { return sex; }
    void setSex(const Sex &value) { sex = value; }

    QString getSexString() const;
    void setSexString(const QString &value);

    double getWeight() const { return weight; }
    void setWeight(double value) { weight = value; }

    double getHeight() const { return height; }
    void setHeight(double value) { height = value; }

    double getHealth() const { return health; }
    void setHealth(double value) { health = value; }

    double getNPA(int pos) const { return npa[pos]; }
    void setNPA(int pos, double value) { npa[pos] = value; }

private:
    int id;
    QString name;

    // physical attributes
    AnimalType type;
    QString breed;
    QString color;
    double age;
    Sex sex;
    double weight;
    double height;
    double health;

    // npa is an array storing non-physical attributes in the following order:
    // 1. Libido
    // 2. Aggressiveness
    // 3. Extroversion
    // 4. Temper
    // 5. Obedience
    // 6. Endurance
    // 7. Activity
    // 8. Impulsivity
    // 9. Distractibility
    // 10. Adaptability
    // 11. Regularity
    // 12. Intelligence
    // 13. Independence
    std::array<double, 15> npa;
};

#endif // ANIMAL_H
