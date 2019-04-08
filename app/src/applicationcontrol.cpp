#include "include/applicationcontrol.h"

ApplicationControl::ApplicationControl()
{

}


void ApplicationControl::viewAnimalList(Ui::MainWindow *ui)
{
    ViewAnimalListControl vALControl;
    vALControl.launch(ui);
}


void ApplicationControl::viewClientList(Ui::MainWindow *ui)
{
    ViewClientListControl vCLControl;
    vCLControl.launch(ui);
}
