#ifndef VIEWOWNPROFILECONTROL_H
#define VIEWOWNPROFILECONTROL_H

#include "ui_mainwindow.h"
#include "client.h"

class ViewOwnProfileControl
{
public:
    ViewOwnProfileControl();
    void launch(Ui::MainWindow *, User *);
};

#endif // VIEWOWNPROFILECONTROL_H
