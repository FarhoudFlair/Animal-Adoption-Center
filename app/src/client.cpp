#include "include/client.h"

bool Client::isStaff()
{
    return false;
}

bool Client::operator==(const Client &c) const {
    return this == &c || id == c.id;
}
