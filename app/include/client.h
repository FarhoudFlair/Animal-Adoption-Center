#ifndef CLIENT_H
#define CLIENT_H
/**
 * Types and operations specific to clients are stored here.
 */

#include <QString>

#include "animal.h"
#include "user.h"

class Client: public User
{
public:
    Client() : id(-1), name(""), phone_number(""), address(""), email(""), patience(0), experience(0), activeness(0), age(18), income(0), regularity(0), preferred_animal() {}

    virtual bool isStaff();

    double getId() const { return id; }
    void setId(const int value) { id = value; }

    // standard getters/setters
    QString getName() const { return name; }
    void setName(const QString &value) { name = value; }

    QString getPhoneNumber() const { return phone_number; }
    void setPhoneNumber(const QString &value) { phone_number = value; }

    QString getAddress() const { return address; }
    void setAddress(const QString &value) { address = value; }

    QString getEmail() const { return email; }
    void setEmail(const QString &value) { email = value; }

    double getPatience() const { return patience; }
    void setPatience(const double value) { patience = value; }

    double getExperience() const { return experience; }
    void setExperience(const double value) { experience = value; }

    double getActiveness() const { return activeness; }
    void setActiveness(const double value) { activeness = value; }

    double getAge() const { return age; }
    void setAge(const double value) { age = value; }

    double getIncome() const { return income; }
    void setIncome(const double value) { income = value; }

    double getRegularity() const { return regularity; }
    void setRegularity(const double value) { regularity = value; }

    Animal &getPreferredAnimal() { return preferred_animal; }
    void setPreferredAnimal(const Animal &value) { preferred_animal = value; }

    bool operator==(const Client &) const;

private:
    int id;

    QString name;
    QString phone_number;
    QString address;
    QString email;

    double patience;
    double experience;
    double activeness;
    double age;
    double income;
    double regularity;

    Animal preferred_animal;
};

#endif // CLIENT_H
