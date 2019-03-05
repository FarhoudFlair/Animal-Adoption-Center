#ifndef SQLSERIALIZER_H
#define SQLSERIALIZER_H
/**
 * A class used to store/load objects to/from the database
 */

#include <QList>

#include "animal.h"
#include "client.h"

class SQLSerializer
{
public:
    SQLSerializer() = delete;
    static void init();

    static void addAnimal(Animal &animal);
//    static void saveAnimal(Animal &animal); // TODO: later
    static QList<Animal> readAnimals();

    static void addClient(Client &client);
//    static void saveClient(Client &client); // TODO: later
    static QList<Client> readClients();
};

#endif // SQLSERIALIZER_H
