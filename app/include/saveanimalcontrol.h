#ifndef SAVEANIMALCONTROL_H
#define SAVEANIMALCONTROL_H


#include <QMessageBox>

#include "animal.h"
#include "ui_mainwindow.h"
#include "sqlserializer.h"
#include "animallistmodel.h"
#include "staff.h"


class SaveAnimalControl
{
public:
    SaveAnimalControl();
    void launch(Ui::MainWindow *, User *, AnimalListModel *);
    Animal animalFromForm(Ui::MainWindow *ui);
    void setAnimalForm(Ui::MainWindow *, Animal &, bool=true);
};




#endif // SAVEANIMALCONTROL_H

