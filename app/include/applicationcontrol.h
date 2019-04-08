#ifndef APPLICATIONCONTROL_H
#define APPLICATIONCONTROL_H

#include "include/viewanimallistcontrol.h"
#include "viewclientlistcontrol.h"
#include "ui_mainwindow.h"
#include "manageclientscontrol.h"

class ApplicationControl
{
public:
    ApplicationControl();
    void launch();
    void clientLogin(Ui::MainWindow *, int, User *);
    void staffLogin();
    void viewAnimalList(Ui::MainWindow *);
    void viewClientList(Ui::MainWindow *);
    void manageClients(Ui::MainWindow *, int, int);

};

#endif // APPLICATIONCONTROL_H
