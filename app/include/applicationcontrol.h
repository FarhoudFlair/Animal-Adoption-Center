#ifndef APPLICATIONCONTROL_H
#define APPLICATIONCONTROL_H

#include "include/viewanimallistcontrol.h"
#include "ui_mainwindow.h"

class ApplicationControl
{
public:
    ApplicationControl();
    void launch();
    void viewAnimalList(Ui::MainWindow *);
};

#endif // APPLICATIONCONTROL_H
