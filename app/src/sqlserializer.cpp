#include "include/sqlserializer.h"

#include <QSqlDatabase>
#include <QSqlDriver>
#include <QSqlError>
#include <QSqlQuery>
#include <QtDebug>

void SQLSerializer::init()
{
    static QString DRIVER("QSQLITE");

    if(QSqlDatabase::isDriverAvailable(DRIVER))
    {
        QSqlDatabase db = QSqlDatabase::addDatabase(DRIVER);
        db.setDatabaseName("./cuACS.db");
        if (!db.open())
            throw QString("Failed to open database: %1").arg(db.lastError().text());
    }
    else
    {
        throw QString("SQLite driver not available");
    }
}

int SQLSerializer::addAnimal(Animal &animal)
{
    QSqlQuery query;
    query.prepare(R"(
        INSERT INTO animal
            (
                  name, type, breed, color, age, sex, weight, height, health, libido,
                  aggressiveness, extroversion, temper, obedience, endurance,
                  activeness, impulsivity, distractibility, adaptability, regularity,
                  intelligence, independence, training, cost
            )
        VALUES
            (
                  :name, :type, :breed, :color, :age, :sex, :weight, :height, :health, :libido,
                  :aggressiveness, :extroversion, :temper, :obedience, :endurance,
                  :activeness, :impulsivity, :distractibility, :adaptability, :regularity,
                  :intelligence, :independence, :training, :cost
            )
    )");
    query.bindValue(":name", animal.getName());
    query.bindValue(":type", animal.getTypeString());
    query.bindValue(":breed", animal.getBreed());
    query.bindValue(":color", animal.getColor());
    query.bindValue(":age", animal.getAge());
    query.bindValue(":sex", animal.getSexString());
    query.bindValue(":weight", animal.getWeight());
    query.bindValue(":height", animal.getHeight());
    query.bindValue(":health", animal.getHealth());

    query.bindValue(":libido", animal.getNPA(0));
    query.bindValue(":aggressiveness", animal.getNPA(1));
    query.bindValue(":extroversion", animal.getNPA(2));
    query.bindValue(":temper", animal.getNPA(3));
    query.bindValue(":obedience", animal.getNPA(4));
    query.bindValue(":endurance", animal.getNPA(5));
    query.bindValue(":activeness", animal.getNPA(6));
    query.bindValue(":impulsivity", animal.getNPA(7));
    query.bindValue(":distractibility", animal.getNPA(8));
    query.bindValue(":adaptability", animal.getNPA(9));
    query.bindValue(":regularity", animal.getNPA(10));
    query.bindValue(":intelligence", animal.getNPA(11));
    query.bindValue(":independence", animal.getNPA(12));
    query.bindValue(":training", animal.getNPA(13));
    query.bindValue(":cost", animal.getNPA(14));

    if(!query.exec())
        throw QString("Error add animal: %1").arg(query.lastError().text());

    return query.lastInsertId().toInt();
}

void SQLSerializer::saveAnimal(Animal &animal)
{
    QSqlQuery query;
    query.prepare(R"(
        UPDATE animal
        SET
            name = :name,
            type = :type,
            breed = :breed,
            color = :color,
            age = :age,
            sex = :sex,
            weight = :weight,
            height = :height,
            health = :health,
            libido = :libido,
            aggressiveness = :aggressiveness,
            extroversion = :extroversion,
            temper = :temper,
            obedience = :obedience,
            endurance = :endurance,
            activeness = :activeness,
            impulsivity = :impulsivity,
            distractibility = :distractibility,
            adaptability = :adaptability,
            regularity = :regularity,
            intelligence = :intelligence,
            independence = :independence,
            training = :training,
            cost = :cost
        WHERE id = :id
    )");
    query.bindValue(":name", animal.getName());
    query.bindValue(":type", animal.getTypeString());
    query.bindValue(":breed", animal.getBreed());
    query.bindValue(":color", animal.getColor());
    query.bindValue(":age", animal.getAge());
    query.bindValue(":sex", animal.getSexString());
    query.bindValue(":weight", animal.getWeight());
    query.bindValue(":height", animal.getHeight());
    query.bindValue(":health", animal.getHealth());

    query.bindValue(":libido", animal.getNPA(0));
    query.bindValue(":aggressiveness", animal.getNPA(1));
    query.bindValue(":extroversion", animal.getNPA(2));
    query.bindValue(":temper", animal.getNPA(3));
    query.bindValue(":obedience", animal.getNPA(4));
    query.bindValue(":endurance", animal.getNPA(5));
    query.bindValue(":activeness", animal.getNPA(6));
    query.bindValue(":impulsivity", animal.getNPA(7));
    query.bindValue(":distractibility", animal.getNPA(8));
    query.bindValue(":adaptability", animal.getNPA(9));
    query.bindValue(":regularity", animal.getNPA(10));
    query.bindValue(":intelligence", animal.getNPA(11));
    query.bindValue(":independence", animal.getNPA(12));
    query.bindValue(":training", animal.getNPA(13));
    query.bindValue(":cost", animal.getNPA(14));

    query.bindValue(":id", animal.getId());

    if(!query.exec())
        throw QString("Error saving animal: %1").arg(query.lastError().text());
}

Animal readAnimal(int id)
{
    QSqlQuery query;
    query.prepare(R"(
        SELECT
            name, type, breed, color, age, sex, weight, height, health, libido,
            aggressiveness, extroversion, temper, obedience, endurance,
            activeness, impulsivity, distractibility, adaptability, regularity,
            intelligence, independence, training, cost
        FROM animal
        WHERE id = :id
    )");

    query.bindValue(":id", id);

    if(!query.exec())
        throw QString("Error reading animal: %1").arg(query.lastError().text());
    query.next();

    Animal animal;

    animal.setId(id);
    animal.setName(query.value(0).toString());
    animal.setTypeString(query.value(1).toString());
    animal.setBreed(query.value(2).toString());
    animal.setColor(query.value(3).toString());
    animal.setAge(query.value(4).toDouble());
    animal.setSexString(query.value(5).toString());
    animal.setWeight(query.value(6).toDouble());
    animal.setHeight(query.value(7).toDouble());
    animal.setHealth(query.value(8).toDouble());

    animal.setNPA(0, query.value(9).toDouble());
    animal.setNPA(1, query.value(10).toDouble());
    animal.setNPA(2, query.value(11).toDouble());
    animal.setNPA(3, query.value(12).toDouble());
    animal.setNPA(4, query.value(13).toDouble());
    animal.setNPA(5, query.value(14).toDouble());
    animal.setNPA(6, query.value(15).toDouble());
    animal.setNPA(7, query.value(16).toDouble());
    animal.setNPA(8, query.value(17).toDouble());
    animal.setNPA(9, query.value(18).toDouble());
    animal.setNPA(10, query.value(19).toDouble());
    animal.setNPA(11, query.value(20).toDouble());
    animal.setNPA(12, query.value(21).toDouble());
    animal.setNPA(13, query.value(22).toDouble());
    animal.setNPA(14, query.value(23).toDouble());

    return animal;
}

QList<Animal> SQLSerializer::readAnimals()
{
    QSqlQuery query;
    query.prepare(R"(
        SELECT id
        FROM animal
        WHERE id NOT IN (
            SELECT preferred_animal
            FROM client
        )
    )");
    if(!query.exec())
        throw QString("Error reading animal: %1").arg(query.lastError().text());

    QList<Animal> list;
    QList<int> ids;

    while (query.next())
        ids.push_back(query.value(0).toInt());

    for (int i = 0; i < ids.size(); ++i)
        list.push_back(readAnimal(ids[i]));

    return list;
}

int SQLSerializer::addClient(Client &client)
{
    int animal_id = SQLSerializer::addAnimal(client.getPreferredAnimal());

    QSqlQuery query;
    query.prepare(R"(
        INSERT INTO client
            (name, phone_number, address, email, patience, experience, activeness, age, income, preferred_animal)
        VALUES
            (:name, :phone_number, :address, :email, :patience, :experience, :activeness, :age, :income, :preferred_animal)
    )");
    query.bindValue(":name", client.getName());
    query.bindValue(":phone_number", client.getPhoneNumber());
    query.bindValue(":address", client.getAddress());
    query.bindValue(":email", client.getEmail());
    query.bindValue(":patience", client.getPatience());
    query.bindValue(":experience", client.getExperience());
    query.bindValue(":activeness", client.getActiveness());
    query.bindValue(":age", client.getAge());
    query.bindValue(":income", client.getIncome());
    query.bindValue(":preferred_animal", animal_id);

    if(!query.exec())
        throw QString("Error adding client: %1").arg(query.lastError().text());

    return query.lastInsertId().toInt();
}

void SQLSerializer::saveClient(Client &client)
{
    QSqlQuery query;
    query.prepare(R"(
        UPDATE client
        SET
            name = :name,
            phone_number = :phone_number,
            address = :address,
            email = :email,
            patience = :patience,
            experience = :experience,
            activeness = :activeness,
            age = :age,
            income = :income
        WHERE id = :id
    )");

    query.bindValue(":name", client.getName());
    query.bindValue(":phone_number", client.getPhoneNumber());
    query.bindValue(":address", client.getAddress());
    query.bindValue(":email", client.getEmail());
    query.bindValue(":patience", client.getPatience());
    query.bindValue(":experience", client.getExperience());
    query.bindValue(":activeness", client.getActiveness());
    query.bindValue(":age", client.getAge());
    query.bindValue(":income", client.getIncome());
    query.bindValue(":id", client.getId());

    if(!query.exec())
        throw QString("Error saving client: %1").arg(query.lastError().text());

    SQLSerializer::saveAnimal(client.getPreferredAnimal());
}

Client readClient(int id)
{
    QSqlQuery query;
    query.prepare(R"(
        SELECT
            name, phone_number, address, email, patience, experience,
            activeness, client.age age, income, preferred_animal
        FROM client
        WHERE id = :id
    )");

    query.bindValue(":id", id);

    if(!query.exec())
        throw QString("Error reading client: %1").arg(query.lastError().text());
    query.next();

    Client client;

    client.setId(id);
    client.setName(query.value(0).toString());
    client.setPhoneNumber(query.value(1).toString());
    client.setAddress(query.value(2).toString());
    client.setEmail(query.value(3).toString());
    client.setPatience(query.value(4).toDouble());
    client.setExperience(query.value(5).toDouble());
    client.setActiveness(query.value(6).toDouble());
    client.setAge(query.value(7).toDouble());
    client.setIncome(query.value(8).toDouble());

    client.setPreferredAnimal(readAnimal(query.value(9).toInt()));

    return client;
}

QList<Client> SQLSerializer::readClients()
{
    QSqlQuery query;
    query.prepare(R"(
        SELECT id
        FROM client
    )");
    if(!query.exec())
        throw QString("Error reading clients: %1").arg(query.lastError().text());

    QList<Client> list;
    QList<int> ids;

    while (query.next())
        ids.push_back(query.value(0).toInt());

    for (int i = 0; i < ids.size(); ++i)
        list.push_back(readClient(ids[i]));

    return list;
}
