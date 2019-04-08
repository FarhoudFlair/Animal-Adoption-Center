#ifndef VIEWCLIENTLISTCONTROL_H
#define VIEWCLIENTLISTCONTROL_H

#include "clientlistmodel.h"
#include "include/sqlserializer.h"
#include "ui_mainwindow.h"

class ViewClientListControl
{
public:
    ViewClientListControl();
    void launch(Ui::MainWindow *);
};

#endif // VIEWCLIENTLISTCONTROL_H
