#ifndef VIEWCLIENTPROFILECONTROL_H
#define VIEWCLIENTPROFILECONTROL_H

#include "clientlistmodel.h"
#include "ui_mainwindow.h"

class ViewClientProfileControl
{
public:
    ViewClientProfileControl();
    void launch(Ui::MainWindow *ui, ClientListModel *, int);
    void setClientForm(Ui::MainWindow *ui, Client &, bool = true);
};

#endif // VIEWCLIENTPROFILECONTROL_H
