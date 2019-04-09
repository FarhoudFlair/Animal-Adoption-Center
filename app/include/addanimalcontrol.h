#ifndef ADDANIMALCONTROL_H
#define ADDANIMALCONTROL_H

#include "ui_mainwindow.h"
#include "animal.h"

class AddAnimalControl
{
public:
    AddAnimalControl();
    void launch(Ui::MainWindow *);
    void setAnimalForm(Ui::MainWindow *, Animal &, bool=true);
};

#endif // ADDANIMALCONTROL_H



