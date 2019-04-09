#include "include/manageanimalscontrol.h"

ManageAnimalsControl::ManageAnimalsControl()
{

}

void ManageAnimalsControl::launch(Ui::MainWindow *ui, int choice, int index, User *loggedInUser)
{
    AnimalListModel *animal_model = new AnimalListModel(ui->animalListView);
    ui->animalListView->setModel(animal_model);
    animal_model->setList(SQLSerializer::readAnimals());

    if(choice == 0) {
        ViewAnimalListControl vALControl;
        vALControl.launch(ui);
    } else if(choice == 1) {
        if (index < 0 || index >= animal_model->getList().size()) return;
        ViewAnimalProfileControl vAPControl;
        vAPControl.launch(ui, index, animal_model, loggedInUser);
    } else if(choice == 2) {
        if (!loggedInUser->isStaff()) return;
        SaveAnimalControl sAControl;
        sAControl.launch(ui, loggedInUser, animal_model);
    } else if(choice == 3) {
        AddAnimalControl aAControl;
        aAControl.launch(ui);
    }
}
