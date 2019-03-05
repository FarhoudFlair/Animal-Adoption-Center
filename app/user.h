#ifndef USER_H
#define USER_H

class User {
public:
    virtual bool isStaff() = 0;

    virtual ~User() = default;
};

#endif // USER_H
