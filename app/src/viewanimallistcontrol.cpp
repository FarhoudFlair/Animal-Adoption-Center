#include "include/viewanimallistcontrol.h"

ViewAnimalListControl::ViewAnimalListControl()
{

}

void ViewAnimalListControl::launch(Ui::MainWindow *ui)
{
    ui->mainStackedWidget->setCurrentWidget(ui->animalsPage);
}
