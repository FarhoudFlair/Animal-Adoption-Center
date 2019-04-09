#ifndef MANAGEANIMALSCONTROL_H
#define MANAGEANIMALSCONTROL_H

#include "ui_mainwindow.h"
#include "animallistmodel.h"
#include "sqlserializer.h"
#include "viewanimallistcontrol.h"
#include "viewanimalprofilecontrol.h"
#include "saveanimalcontrol.h"
#include "addanimalcontrol.h"

class ManageAnimalsControl
{
public:
    ManageAnimalsControl();
    void launch(Ui::MainWindow *, int, int, User *);
};

#endif // MANAGEANIMALSCONTROL_H
