#ifndef VIEWANIMALPROFILECONTROL_H
#define VIEWANIMALPROFILECONTROL_H

#include "ui_mainwindow.h"
#include "animallistmodel.h"
#include "user.h"
#include "staff.h"

class ViewAnimalProfileControl
{
public:
    ViewAnimalProfileControl();
    void launch(Ui::MainWindow *, int, AnimalListModel *, User *);
    void setAnimalForm(Ui::MainWindow *, Animal &, bool = true);
};

#endif // VIEWANIMALPROFILECONTROL_H
