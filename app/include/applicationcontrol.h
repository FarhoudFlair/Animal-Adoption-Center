#ifndef APPLICATIONCONTROL_H
#define APPLICATIONCONTROL_H

#include "include/viewanimallistcontrol.h"
#include "viewclientlistcontrol.h"
#include "ui_mainwindow.h"
#include "manageclientscontrol.h"
#include "staff.h"

class ApplicationControl
{
public:
    ApplicationControl();
    void launch();
    void clientLogin(Ui::MainWindow *, int, User *);
    void staffLogin(Ui::MainWindow *);
    void viewAnimalList(Ui::MainWindow *);
    void viewClientList(Ui::MainWindow *);
    void manageClients(Ui::MainWindow *, int, int);
private:
    User *loggedInUser;

};

#endif // APPLICATIONCONTROL_H
