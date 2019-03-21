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
