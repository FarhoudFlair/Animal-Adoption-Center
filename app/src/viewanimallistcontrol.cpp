#include "include/viewanimallistcontrol.h"

ViewAnimalListControl::ViewAnimalListControl()
{

}

void ViewAnimalListControl::launch(Ui::MainWindow *ui)
{

    this->animal_model.setList(SQLSerializer::readAnimals());
    ui->animalListView->setModel(&this->animal_model);
    ui->mainStackedWidget->setCurrentWidget(ui->animalsPage);

}
