#include "include/viewclientlistcontrol.h"

ViewClientListControl::ViewClientListControl()
{

}

void ViewClientListControl::launch(Ui::MainWindow *ui)
{
    ClientListModel *client_model = new ClientListModel(ui->clientListView);
    client_model->setList(SQLSerializer::readClients());
    ui->clientListView->setModel(client_model);
    ui->mainViewClientLoginList->setModel(client_model);
    ui->mainStackedWidget->setCurrentWidget(ui->clientsPage);
}

