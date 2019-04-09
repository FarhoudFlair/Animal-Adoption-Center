#ifndef SAVECLIENTCONTROL_H
#define SAVECLIENTCONTROL_H

#include <QMessageBox>

#include "client.h"
#include "ui_mainwindow.h"
#include "sqlserializer.h"
#include "clientlistmodel.h"

class SaveClientControl
{
public:
    SaveClientControl();
    void launch(Ui::MainWindow *, User *, ClientListModel *);
    Client clientFromForm(Ui::MainWindow *ui);
    void setClientForm(Ui::MainWindow *, Client &, bool=true);
};


#endif // SAVECLIENTCONTROL_H
