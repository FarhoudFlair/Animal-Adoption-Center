#ifndef VIEWCLIENTLISTCONTROL_H
#define VIEWCLIENTLISTCONTROL_H

#include "clientlistmodel.h"
#include "ui_mainwindow.h"

class ViewClientListControl
{
public:
    ViewClientListControl();
    void launchLogin(Ui::MainWindow *, ClientListModel *);
    void launch(Ui::MainWindow *, ClientListModel *);
};

#endif // VIEWCLIENTLISTCONTROL_H
