#ifndef STAFF_H
#define STAFF_H

#include "user.h"

class Staff: public User
{
public:
    Staff() = default;

    virtual bool isStaff();
};

#endif // STAFF_H
