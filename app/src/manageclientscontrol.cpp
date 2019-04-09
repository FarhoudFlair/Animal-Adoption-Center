#include "include/manageclientscontrol.h"


ManageClientsControl::ManageClientsControl()
{

}

void ManageClientsControl::launch(Ui::MainWindow *ui, int choice, int index, User *loggedInUser)
{
    ClientListModel *client_model = new ClientListModel(ui->clientListView);
    ui->clientListView->setModel(client_model);
    client_model->setList(SQLSerializer::readClients());
    if(choice == 0) {
        ViewClientListControl vCLControl;
        vCLControl.launchLogin(ui, client_model);
    } else if(choice == 1) {
        ViewClientListControl vCLControl;
        vCLControl.launch(ui);
    } else if(choice == 2) {
        if (index < 0 || index >= client_model->getList().size()) return;
        ViewClientProfileControl vCPControl;
        vCPControl.launch(ui, client_model, index);
    } else if(choice == 3) {
        AddClientControl aCControl;
        aCControl.launch(ui);
    } else if(choice == 4) {
        SaveClientControl sCControl;
        sCControl.launch(ui, loggedInUser, client_model);
    }

}


