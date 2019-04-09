#ifndef APPLICATIONCONTROL_H
#define APPLICATIONCONTROL_H

#include "include/viewanimallistcontrol.h"
#include "viewclientlistcontrol.h"
#include "ui_mainwindow.h"
#include "manageclientscontrol.h"
#include "manageanimalscontrol.h"
#include "staff.h"
#include "viewownprofilecontrol.h"

class ApplicationControl
{
public:
    ApplicationControl();
    ~ApplicationControl();
    void launch();
    void clientLogin(Ui::MainWindow *, int);
    void staffLogin(Ui::MainWindow *);
    void manageClients(Ui::MainWindow *, int, int);
    void manageAnimals(Ui::MainWindow *, int, int);
    void viewOwnProfile(Ui::MainWindow *);
private:
    User *loggedInUser;

};

#endif // APPLICATIONCONTROL_H
