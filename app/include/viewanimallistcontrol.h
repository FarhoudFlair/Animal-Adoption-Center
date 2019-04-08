#ifndef VIEWANIMALLISTCONTROL_H
#define VIEWANIMALLISTCONTROL_H

#include "animallistmodel.h"
#include "include/sqlserializer.h"
#include "ui_mainwindow.h"

class ViewAnimalListControl
{
public:
    ViewAnimalListControl();
    void launch(Ui::MainWindow *);
private:
    AnimalListModel animal_model;
};

#endif // VIEWANIMALLISTCONTROL_H
