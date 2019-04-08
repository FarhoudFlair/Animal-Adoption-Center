#include "include/viewanimallistcontrol.h"

ViewAnimalListControl::ViewAnimalListControl()
{

}

void ViewAnimalListControl::launch(Ui::MainWindow *ui)
{
    AnimalListModel *animal_model = new AnimalListModel(ui->animalListView);
    animal_model->setList(SQLSerializer::readAnimals());
    ui->mainStackedWidget->setCurrentWidget(ui->animalsPage);
}
