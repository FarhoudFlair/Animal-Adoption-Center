#include "include/viewclientlistcontrol.h"

ViewClientListControl::ViewClientListControl()
{

}

void ViewClientListControl::launchLogin(Ui::MainWindow *ui, ClientListModel *client_model)
{
    ui->clientLoginClientListView->setModel(client_model);
    ui->mainStackedWidget->setCurrentWidget(ui->clientLoginPage);
}

void ViewClientListControl::launch(Ui::MainWindow *ui, ClientListModel *client_model)
{
    ui->clientListView->setModel(client_model);
    ui->mainStackedWidget->setCurrentWidget(ui->clientsPage);
}
