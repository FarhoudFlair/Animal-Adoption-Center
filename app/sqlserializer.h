#ifndef SQLSERIALIZER_H
#define SQLSERIALIZER_H

#include <QList>

#include "animal.h"

class SQLSerializer
{
public:
    SQLSerializer() = delete;
    static void init();

    static void saveAnimal(Animal &animal);
    static QList<Animal> readAnimals();
};

#endif // SQLSERIALIZER_H
