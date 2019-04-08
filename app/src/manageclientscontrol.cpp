#include "include/manageclientscontrol.h"

ManageClientsControl::ManageClientsControl()
{

}

void ManageClientsControl::launch(Ui::MainWindow *ui, int choice, int index)
{
    ClientListModel *client_model = new ClientListModel(ui->clientListView);
    client_model->setList(SQLSerializer::readClients());
    if(choice == 0) {
        ViewClientListControl vCLControl;
        vCLControl.launchLogin(ui, client_model);
    } else if(choice == 1) {
        ViewClientListControl vCLControl;
        vCLControl.launch(ui, client_model);
    } else if(choice == 2) {
        if (index <= 0 || index >= client_model->getList().size()) return;
        ViewClientProfileControl vCPControl;
        vCPControl.launch(ui, client_model, index);
    }

}
