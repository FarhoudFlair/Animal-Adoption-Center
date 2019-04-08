#include "include/applicationcontrol.h"

ApplicationControl::ApplicationControl()
{

}


void ApplicationControl::viewAnimalList(Ui::MainWindow *ui)
{
    ViewAnimalListControl vALControl;
    vALControl.launch(ui);
}
