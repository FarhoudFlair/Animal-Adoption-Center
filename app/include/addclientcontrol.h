#ifndef ADDCLIENTCONTROL_H
#define ADDCLIENTCONTROL_H

#include "ui_mainwindow.h"
#include "client.h"

class AddClientControl
{
public:
    AddClientControl();
    void launch(Ui::MainWindow *);
    void setClientForm(Ui::MainWindow *, Client &, bool=true);
};

#endif // ADDCLIENTCONTROL_H
