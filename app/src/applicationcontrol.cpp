#include "include/applicationcontrol.h"

ApplicationControl::ApplicationControl()
{

}


void ApplicationControl::clientLogin(Ui::MainWindow *ui, int indexRow, User *loggedInUser)
{
//    loggedInUser = new Client(this->client_model.getList()[indexRow]);

//    ui->addAnimalButton->setVisible(false);
//    ui->animalFormSaveButton->setVisible(false);
//    ui->animalFormCancelButton->setText("OK");
//    ui->clientFormCancelButton->setVisible(false);
//    ui->homeViewClientsButton->setText("View Your Profile");
//    ui->homeViewAlgorithmButton->setVisible(false);
//    ui->clientsStackedWidget->setCurrentWidget(this->ui->clientFormPage);

//    Client *c = dynamic_cast<Client *>(this->loggedInUser);
//    this->setClientForm(*c, true);

//    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void ApplicationControl::viewAnimalList(Ui::MainWindow *ui)
{
    ViewAnimalListControl vALControl;
    vALControl.launch(ui);
}

void ApplicationControl::viewClientList(Ui::MainWindow *ui)
{
    ViewClientListControl vCLControl;
  //  vCLControl.launch(ui);
}

void ApplicationControl::manageClients(Ui::MainWindow *ui, int choice, int index)
{
    ManageClientsControl mCControl;
    mCControl.launch(ui, choice, index);
}
