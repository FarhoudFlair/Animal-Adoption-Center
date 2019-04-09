#include "include/animal.h"

QList<AnimalType> animal_type_variants()
{
    return {Dog, Cat, Horse, Rabbit, Hamster, Bird, Fish};
}

QList<QString> animal_type_variants_str()
{
    return {"Dog", "Cat", "Horse", "Rabbit", "Hamster", "Bird", "Fish"};
}

QList<Sex> sex_variants()
{
    return {Male, Female};
}

QList<QString> sex_variants_str()
{
    return {"Male", "Female"};
}

QString Animal::getTypeString() const
{
    auto variants = animal_type_variants();
    auto variants_str = animal_type_variants_str();
    ptrdiff_t pos = variants.indexOf(type);
    if (pos >= 0 && variants.size() == variants_str.size())
    {
        return variants_str[pos];
    }
    else
    {
        throw QString("Stored AnimalType not a proper variant: %1").arg(type);
    }
}

void Animal::setTypeString(const QString &value)
{
    auto variants = animal_type_variants();
    auto variants_str = animal_type_variants_str();
    ptrdiff_t pos = variants_str.indexOf(value);
    if (pos >= 0 && variants.size() == variants_str.size())
    {
        type = variants[pos];
    }
    else
    {
        throw QString("Invalid AnimalType variant: %1").arg(value);
    }
}

QString Animal::getSexString() const
{
    auto variants = sex_variants();
    auto variants_str = sex_variants_str();
    ptrdiff_t pos = variants.indexOf(sex);
    if (pos >= 0 && variants.size() == variants_str.size())
    {
        return variants_str[pos];
    }
    else
    {
        throw QString("Stored Sex not a proper variant: %1").arg(sex);
    }
}

void Animal::setSexString(const QString &value)
{
    auto variants = sex_variants();
    auto variants_str = sex_variants_str();
    ptrdiff_t pos = variants_str.indexOf(value);
    if (pos >= 0 && variants.size() == variants_str.size())
    {
        sex = variants[pos];
    }
    else
    {
        throw QString("Invalid AnimalType variant: %1").arg(value);
    }
}

bool Animal::operator==(const Animal &a) const {
    return this == &a || id == a.id;
}

QString Animal::summaryString() const
{
    QString s;
    
    s += QString("Type: %1\n").arg(this->getTypeString());
    s += QString("Breed: %1\n").arg(this->getBreed());
    s += QString("Age: %1 years\n").arg(this->getAge());
    s += QString("Sex: %1\n").arg(this->getSexString());
    s += QString("Weight: %1 kb\n").arg(this->getWeight());
    s += QString("Height: %1 lb\n").arg(this->getHeight());
    s += QString("Health: %1\n").arg(this->getHealth());

    s += QString("Libido: %1\n").arg(this->getNPA(0));
    s += QString("Aggressiveness: %1\n").arg(this->getNPA(1));
    s += QString("Extroversion: %1\n").arg(this->getNPA(2));
    s += QString("Temper: %1\n").arg(this->getNPA(3));
    s += QString("Obedience: %1\n").arg(this->getNPA(4));
    s += QString("Endurance: %1\n").arg(this->getNPA(5));
    s += QString("Activity: %1\n").arg(this->getNPA(6));
    s += QString("Impulsivity: %1\n").arg(this->getNPA(7));
    s += QString("Distractibility: %1\n").arg(this->getNPA(8));
    s += QString("Adaptability: %1\n").arg(this->getNPA(9));
    s += QString("Regularity: %1\n").arg(this->getNPA(10));
    s += QString("Intelligence: %1\n").arg(this->getNPA(11));
    s += QString("Independence: %1\n").arg(this->getNPA(12));
    s += QString("Training: %1\n").arg(this->getNPA(13));
    s += QString("Cost: %1 $/year").arg(this->getNPA(14));

    return s;
}
