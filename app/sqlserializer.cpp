#include "sqlserializer.h"

#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QtDebug>

void SQLSerializer::init()
{
    static QString DRIVER("QSQLITE");

    if(QSqlDatabase::isDriverAvailable(DRIVER)) {
        QSqlDatabase db = QSqlDatabase::addDatabase(DRIVER);
        db.setDatabaseName("./cuACS.db");
        if (!db.open())
            throw QString("Failed to open database: %1").arg(db.lastError().text());
    } else {
        throw "SQLite driver not available";
    }
}

void SQLSerializer::saveAnimal(Animal &animal)
{
    QSqlQuery query;
    query.prepare(R"(
        INSERT INTO animal
            (name, type, breed, color, age, gender, weight, height)
        VALUES
            (:name, :type, :breed, :color, :age, :gender, :weight, :height)
    )");
    query.bindValue(":name", animal.getName());
    query.bindValue(":type", animal.getTypeString());
    query.bindValue(":breed", animal.getBreed());
    query.bindValue(":color", animal.getColor());
    query.bindValue(":age", animal.getAge());
    query.bindValue(":gender", animal.getGenderString());
    query.bindValue(":weight", animal.getWeight());
    query.bindValue(":height", animal.getHeight());

    if(!query.exec())
        qWarning() << "ERROR: " << query.lastError();
}

QList<Animal> SQLSerializer::readAnimals()
{
    QSqlQuery query;
    query.prepare(R"(
        SELECT name, type, breed, color, age, gender, weight, height
        FROM animal
    )");
    if(!query.exec())
        throw QString("Error reading animals: %1").arg(query.lastError().text());

    QList<Animal> list;

    while (query.next()) {
        Animal animal;
        animal.setName(query.value(0).toString());
        animal.setTypeString(query.value(1).toString());
        animal.setBreed(query.value(2).toString());
        animal.setColor(query.value(3).toString());
        animal.setAge(query.value(4).toDouble());
        animal.setGenderString(query.value(5).toString());
        animal.setWeight(query.value(6).toDouble());
        animal.setHeight(query.value(7).toDouble());

        list.push_back(animal);
    }
    return list;
}
