#include "include/applicationcontrol.h"

ApplicationControl::ApplicationControl():loggedInUser(nullptr)
{

}

ApplicationControl::~ApplicationControl()
{
    if (this->loggedInUser != nullptr) delete this->loggedInUser;
}

void ApplicationControl::clientLogin(Ui::MainWindow *ui, int indexRow)
{
    ClientListModel *client_model = new ClientListModel(ui->clientListView);
    ui->clientListView->setModel(client_model);
    client_model->setList(SQLSerializer::readClients());

    this->loggedInUser = new Client(client_model->getList()[indexRow]);

    ui->addAnimalButton->setVisible(false);
    ui->animalFormSaveButton->setVisible(false);
    ui->animalFormCancelButton->setText("OK");
    ui->clientFormCancelButton->setVisible(false);
    ui->homeViewClientsButton->setText("View Your Profile");
    ui->homeViewAlgorithmButton->setVisible(false);
    ui->clientsStackedWidget->setCurrentWidget(ui->clientFormPage);

    ui->mainStackedWidget->setCurrentWidget(ui->homePage);
}

void ApplicationControl::staffLogin(Ui::MainWindow *ui)
{
    this->loggedInUser = new Staff();
    ui->mainStackedWidget->setCurrentWidget(ui->homePage);
}

void ApplicationControl::manageAnimals(Ui::MainWindow *ui, int choice, int index)
{
    ManageAnimalsControl mAControl;
    mAControl.launch(ui, choice, index, this->loggedInUser);
}

void ApplicationControl::manageClients(Ui::MainWindow *ui, int choice, int index)
{
    ManageClientsControl mCControl;
    mCControl.launch(ui, choice, index, this->loggedInUser);
}

void ApplicationControl::viewOwnProfile(Ui::MainWindow *ui)
{
    ViewOwnProfileControl vOPControl;
    vOPControl.launch(ui, this->loggedInUser);
}
