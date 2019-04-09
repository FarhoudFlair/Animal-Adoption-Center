#include "include/client.h"

#include <iostream>

using namespace std;

bool Client::isStaff()
{
    return false;
}

bool Client::operator==(const Client &c) const {
    return this == &c || id == c.id;
}

QString Client::summaryString() const
{
    QString s;

    s += QString("Phone Number: %1\n").arg(phone_number);
    s += QString("Address: %1\n").arg(address);
    s += QString("Email: %1\n").arg(email);

    s += QString("Patience: %1\n").arg(patience);
    s += QString("Experience: %1\n").arg(experience);
    s += QString("Activeness: %1\n").arg(activeness);
    s += QString("Age: %1 years\n").arg(age);
    s += QString("Income: %1 $/year\n").arg(income);
    s += QString("Regularity: %1").arg(regularity);

    return s;
}
