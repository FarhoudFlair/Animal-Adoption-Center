#include "include/viewanimallistcontrol.h"

ViewAnimalListControl::ViewAnimalListControl()
{

}

void ViewAnimalListControl::launch(Ui::MainWindow *ui)
{
    AnimalListModel *animal_model = new AnimalListModel(ui->animalListView);
    animal_model->setList(SQLSerializer::readAnimals());
    ui->animalListView->setModel(animal_model);
    ui->mainStackedWidget->setCurrentWidget(ui->animalsPage);
}
