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
