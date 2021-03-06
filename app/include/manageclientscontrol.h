#ifndef MANAGECLIENTSCONTROL_H
#define MANAGECLIENTSCONTROL_H

#include "clientlistmodel.h"
#include "include/sqlserializer.h"
#include "ui_mainwindow.h"
#include "viewclientlistcontrol.h"
#include "viewclientprofilecontrol.h"
#include "addclientcontrol.h"
#include "saveclientcontrol.h"

class ManageClientsControl
{
public:
    ManageClientsControl();
    void launch(Ui::MainWindow *, int, int, User *);
};

#endif // MANAGECLIENTSCONTROL_H
