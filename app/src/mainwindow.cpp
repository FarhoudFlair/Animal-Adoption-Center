#include "include/mainwindow.h"


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // reset forms
   // this->setAnimalForm();
   // this->setClientForm();

    // set combo box items for animal type
    this->ui->animalFormTypeInput->addItems(animal_type_variants_str());
    this->ui->clientFormPrefAnimalTypeInput->addItems(animal_type_variants_str());


    // set default pages for stacked widgets
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->loginPage);
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
    this->ui->algorithmStackedWidget->setCurrentWidget(this->ui->algorithmSummaryViewPage);
}

MainWindow::~MainWindow()
{
    delete this->ui;
}

void MainWindow::on_loginAsClientButton_clicked()
{
    appCtrl.manageClients(this->ui, 0, -1);
}

void MainWindow::on_clientLoginClientListView_doubleClicked(const QModelIndex &index)
{
    if (!index.isValid()) return;

    appCtrl.clientLogin(this->ui, index.row());
}

void MainWindow::on_loginAsStaffButton_clicked()
{
    appCtrl.staffLogin(this->ui);
}

void MainWindow::on_addAnimalButton_clicked()
{
    appCtrl.manageAnimals(ui, 3, -1);
}

void MainWindow::on_animalFormCancelButton_clicked()
{
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalFormSaveButton_clicked()
{
    appCtrl.manageAnimals(ui, 2, -1);
}

void MainWindow::on_animalListView_doubleClicked(const QModelIndex &index)
{
    appCtrl.manageAnimals(ui, 1, index.row());
}

void MainWindow::on_clientListView_doubleClicked(const QModelIndex &index)
{
    appCtrl.manageClients(this->ui, 2, index.row());
}

void MainWindow::on_clientFormSaveButton_clicked()
{
    appCtrl.manageClients(ui, 4, -1);
}

void MainWindow::on_clientFormCancelButton_clicked()
{
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
}

void MainWindow::on_addClientButton_clicked()
{
    appCtrl.manageClients(this->ui, 3, -1);
}

void MainWindow::on_algorithmBackButton_clicked()
{
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void MainWindow::on_animalBackButton_clicked()
{
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void MainWindow::on_clientBackButton_clicked()
{
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void MainWindow::on_homeViewAnimalsButton_clicked()
{
    appCtrl.manageAnimals(this->ui, 0, -1);
}

void MainWindow::on_homeViewClientsButton_clicked()
{
    if (ui->homeViewClientsButton->text() == "View Your Profile") {
        appCtrl.viewOwnProfile(this->ui);
    } else {
        appCtrl.manageClients(this->ui, 1, -1);
    }
}

void MainWindow::on_homeViewAlgorithmButton_clicked()
{

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->algorithmPage);
}


void MainWindow::on_algorithmLaunchAlgorithmButton_clicked()
{
    LaunchAlgorithmControl algoControl;
    auto animals = SQLSerializer::readAnimals();
    auto clients = SQLSerializer::readClients();
    algoControl.launch(animals, clients, this->ui);
}

void MainWindow::on_algorithmDetailedButton_clicked()
{
    this->ui->algorithmStackedWidget->setCurrentWidget(this->ui->algorithmSummaryViewPage);
}

void MainWindow::on_algorithmSummaryListView_doubleClicked(const QModelIndex &index)
{
    if (!index.isValid()) return;

    AlgorithmListModel *model = dynamic_cast<AlgorithmListModel *>(this->ui->algorithmSummaryListView->model());
    const QString & details = model->getElement(index.row()).getDetails();
    this->ui->algorithmDetailedTextBrowser->setText(details);

    this->ui->algorithmStackedWidget->setCurrentWidget(this->ui->algorithmDetailedViewPage);
}
