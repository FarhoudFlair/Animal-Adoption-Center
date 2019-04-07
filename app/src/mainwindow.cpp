#include <QDebug>

#include "include/mainwindow.h"
#include "ui_mainwindow.h"

#include "include/staff.h"
#include "include/animal.h"
#include "include/sqlserializer.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    loggedInUser(nullptr)
{
    ui->setupUi(this);

    // reset forms
    this->setAnimalForm();
    this->setClientForm();

    // add animals to animal list view
    this->animal_model.setList(SQLSerializer::readAnimals());
    this->ui->animalListView->setModel(&this->animal_model);

    // set combo box items for animal type
    this->ui->animalFormTypeInput->addItems(animal_type_variants_str());
    this->ui->clientFormPrefAnimalTypeInput->addItems(animal_type_variants_str());

    // add clients to client list view
    this->client_model.setList(SQLSerializer::readClients());
    this->ui->clientListView->setModel(&this->client_model);
    this->ui->mainViewClientLoginList->setModel(&this->client_model);

    // set default pages for stacked widgets
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->loginPage);
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
    this->ui->algorithmStackedWidget->setCurrentWidget(this->ui->algorithmSummaryViewPage);
}

MainWindow::~MainWindow()
{
    delete this->ui;
    if (this->loggedInUser != nullptr) delete this->loggedInUser;
}

void MainWindow::setAnimalForm(bool e)
{
    Animal dummy;
    this->setAnimalForm(dummy, e);
}

void MainWindow::setAnimalForm(Animal &a, bool e)
{
    this->ui->animalFormNameInput->setText(a.getName());
    this->ui->animalFormTypeInput->setCurrentText(a.getTypeString());
    this->ui->animalFormBreedInput->setText(a.getBreed());
    this->ui->animalFormColorInput->setText(a.getColor());
    this->ui->animalFormAgeInput->setValue(a.getAge());
    this->ui->animalFormSexInput->setCurrentText(a.getSexString());
    this->ui->animalFormWeightInput->setValue(a.getWeight());
    this->ui->animalFormHeightInput->setValue(a.getHeight());
    this->ui->animalFormHealthInput->setValue(a.getHealth());

    this->ui->animalFormLibidoInput->setValue(a.getNPA(0));
    this->ui->animalFormAggressivenessInput->setValue(a.getNPA(1));
    this->ui->animalFormExtroversionInput->setValue(a.getNPA(2));
    this->ui->animalFormTemperInput->setValue(a.getNPA(3));
    this->ui->animalFormObedienceInput->setValue(a.getNPA(4));
    this->ui->animalFormEnduranceInput->setValue(a.getNPA(5));
    this->ui->animalFormActivenessInput->setValue(a.getNPA(6));
    this->ui->animalFormImpulsionInput->setValue(a.getNPA(7));
    this->ui->animalFormDistractibilityInput->setValue(a.getNPA(8));
    this->ui->animalFormAdaptabilityInput->setValue(a.getNPA(9));
    this->ui->animalFormRegularityInput->setValue(a.getNPA(10));
    this->ui->animalFormIntelligenceInput->setValue(a.getNPA(11));
    this->ui->animalFormIndependenceInput->setValue(a.getNPA(12));
    this->ui->animalFormTrainingInput->setValue(a.getNPA(13));
    this->ui->animalFormCostInput->setValue(a.getNPA(14));

    this->ui->animalFormNameInput->setEnabled(e);
    this->ui->animalFormTypeInput->setEnabled(e);
    this->ui->animalFormBreedInput->setEnabled(e);
    this->ui->animalFormColorInput->setEnabled(e);
    this->ui->animalFormAgeInput->setEnabled(e);
    this->ui->animalFormSexInput->setEnabled(e);
    this->ui->animalFormWeightInput->setEnabled(e);
    this->ui->animalFormHeightInput->setEnabled(e);
    this->ui->animalFormHealthInput->setEnabled(e);

    this->ui->animalFormLibidoInput->setEnabled(e);
    this->ui->animalFormAggressivenessInput->setEnabled(e);
    this->ui->animalFormExtroversionInput->setEnabled(e);
    this->ui->animalFormTemperInput->setEnabled(e);
    this->ui->animalFormObedienceInput->setEnabled(e);
    this->ui->animalFormEnduranceInput->setEnabled(e);
    this->ui->animalFormActivenessInput->setEnabled(e);
    this->ui->animalFormImpulsionInput->setEnabled(e);
    this->ui->animalFormDistractibilityInput->setEnabled(e);
    this->ui->animalFormAdaptabilityInput->setEnabled(e);
    this->ui->animalFormRegularityInput->setEnabled(e);
    this->ui->animalFormIntelligenceInput->setEnabled(e);
    this->ui->animalFormIndependenceInput->setEnabled(e);
    this->ui->animalFormTrainingInput->setEnabled(e);
    this->ui->animalFormCostInput->setEnabled(e);

    this->ui->animalFormCancelButton->setEnabled(true);
    this->ui->animalFormSaveButton->setEnabled(true);
}

Animal MainWindow::animalFromForm()
{
    Animal animal;

    animal.setName(this->ui->animalFormNameInput->text());
    animal.setTypeString(this->ui->animalFormTypeInput->currentText());
    animal.setBreed(this->ui->animalFormBreedInput->text());
    animal.setColor(this->ui->animalFormColorInput->text());
    animal.setAge(this->ui->animalFormAgeInput->value());
    animal.setSexString(this->ui->animalFormSexInput->currentText());
    animal.setWeight(this->ui->animalFormWeightInput->value());
    animal.setHeight(this->ui->animalFormHeightInput->value());

    animal.setNPA(0, this->ui->animalFormLibidoInput->value());
    animal.setNPA(1, this->ui->animalFormAggressivenessInput->value());
    animal.setNPA(2, this->ui->animalFormExtroversionInput->value());
    animal.setNPA(3, this->ui->animalFormTemperInput->value());
    animal.setNPA(4, this->ui->animalFormObedienceInput->value());
    animal.setNPA(5, this->ui->animalFormEnduranceInput->value());
    animal.setNPA(6, this->ui->animalFormActivenessInput->value());
    animal.setNPA(7, this->ui->animalFormImpulsionInput->value());
    animal.setNPA(8, this->ui->animalFormDistractibilityInput->value());
    animal.setNPA(9, this->ui->animalFormAdaptabilityInput->value());
    animal.setNPA(10, this->ui->animalFormRegularityInput->value());
    animal.setNPA(11, this->ui->animalFormIntelligenceInput->value());
    animal.setNPA(12, this->ui->animalFormIndependenceInput->value());
    animal.setNPA(13, this->ui->animalFormTrainingInput->value());
    animal.setNPA(14, this->ui->animalFormCostInput->value());

    return animal;
}

void MainWindow::setClientForm(bool e)
{
    Client dummy;
    this->setClientForm(dummy, e);
}

void MainWindow::setClientForm(Client &c, bool e)
{
    this->ui->clientFormNameInput->setText(c.getName());
    this->ui->clientFormPhoneNumberInput->setText(c.getPhoneNumber());
    this->ui->clientFormAddressInput->setText(c.getAddress());
    this->ui->clientFormEmailInput->setText(c.getEmail());
    this->ui->clientFormPatienceInput->setValue(c.getPatience());
    this->ui->clientFormExperienceInput->setValue(c.getExperience());
    this->ui->clientFormActivenessInput->setValue(c.getActiveness());
    this->ui->clientFormAgeInput->setValue(c.getAge());
    this->ui->clientFormIncomeInput->setValue(c.getIncome());
    this->ui->clientFormRegularityInput->setValue(c.getRegularity());

    this->ui->clientFormPrefAnimalTypeInput->setCurrentText(c.getPreferredAnimal().getTypeString());
    this->ui->clientFormPrefBreedInput->setText(c.getPreferredAnimal().getBreed());
    this->ui->clientFormPrefColorInput->setText(c.getPreferredAnimal().getColor());
    this->ui->clientFormPrefAgeInput->setValue(c.getPreferredAnimal().getAge());
    this->ui->clientFormPrefSexInput->setCurrentText(c.getPreferredAnimal().getSexString());
    this->ui->clientFormPrefWeightInput->setValue(c.getPreferredAnimal().getWeight());
    this->ui->clientFormPrefHeightInput->setValue(c.getPreferredAnimal().getHeight());

    this->ui->clientFormPrefLibidoInput->setValue(c.getPreferredAnimal().getNPA(0));
    this->ui->clientFormPrefAggressivenessInput->setValue(c.getPreferredAnimal().getNPA(1));
    this->ui->clientFormPrefExtroversionInput->setValue(c.getPreferredAnimal().getNPA(2));
    this->ui->clientFormPrefTemperInput->setValue(c.getPreferredAnimal().getNPA(3));
    this->ui->clientFormPrefObedienceInput->setValue(c.getPreferredAnimal().getNPA(4));
    this->ui->clientFormPrefEnduranceInput->setValue(c.getPreferredAnimal().getNPA(5));
    this->ui->clientFormPrefActivenessInput->setValue(c.getPreferredAnimal().getNPA(6));
    this->ui->clientFormPrefImpulsivityInput->setValue(c.getPreferredAnimal().getNPA(7));
    this->ui->clientFormPrefDistractibilityInput->setValue(c.getPreferredAnimal().getNPA(8));
    this->ui->clientFormPrefAdaptabilityInput->setValue(c.getPreferredAnimal().getNPA(9));
    this->ui->clientFormPrefRegularityInput->setValue(c.getPreferredAnimal().getNPA(10));
    this->ui->clientFormPrefIntelligenceInput->setValue(c.getPreferredAnimal().getNPA(11));
    this->ui->clientFormPrefIndependenceInput->setValue(c.getPreferredAnimal().getNPA(12));
    this->ui->clientFormPrefTrainingInput->setValue(c.getPreferredAnimal().getNPA(13));
    this->ui->clientFormPrefCostInput->setValue(c.getPreferredAnimal().getNPA(14));

    this->ui->clientFormNameInput->setEnabled(e);
    this->ui->clientFormPhoneNumberInput->setEnabled(e);
    this->ui->clientFormAddressInput->setEnabled(e);
    this->ui->clientFormEmailInput->setEnabled(e);
    this->ui->clientFormPatienceInput->setEnabled(e);
    this->ui->clientFormExperienceInput->setEnabled(e);
    this->ui->clientFormActivenessInput->setEnabled(e);
    this->ui->clientFormAgeInput->setEnabled(e);
    this->ui->clientFormIncomeInput->setEnabled(e);
    this->ui->clientFormRegularityInput->setEnabled(e);

    this->ui->clientFormPrefAnimalTypeInput->setEnabled(e);
    this->ui->clientFormPrefBreedInput->setEnabled(e);
    this->ui->clientFormPrefColorInput->setEnabled(e);
    this->ui->clientFormPrefAgeInput->setEnabled(e);
    this->ui->clientFormPrefSexInput->setEnabled(e);
    this->ui->clientFormPrefWeightInput->setEnabled(e);
    this->ui->clientFormPrefHeightInput->setEnabled(e);

    this->ui->clientFormPrefLibidoInput->setEnabled(e);
    this->ui->clientFormPrefAggressivenessInput->setEnabled(e);
    this->ui->clientFormPrefExtroversionInput->setEnabled(e);
    this->ui->clientFormPrefTemperInput->setEnabled(e);
    this->ui->clientFormPrefObedienceInput->setEnabled(e);
    this->ui->clientFormPrefEnduranceInput->setEnabled(e);
    this->ui->clientFormPrefActivenessInput->setEnabled(e);
    this->ui->clientFormPrefImpulsivityInput->setEnabled(e);
    this->ui->clientFormPrefDistractibilityInput->setEnabled(e);
    this->ui->clientFormPrefAdaptabilityInput->setEnabled(e);
    this->ui->clientFormPrefRegularityInput->setEnabled(e);
    this->ui->clientFormPrefIntelligenceInput->setEnabled(e);
    this->ui->clientFormPrefIndependenceInput->setEnabled(e);
    this->ui->clientFormPrefTrainingInput->setEnabled(e);
    this->ui->clientFormPrefCostInput->setEnabled(e);

    this->ui->clientFormSaveButton->setEnabled(true);
    this->ui->clientFormCancelButton->setEnabled(true);
}

Client MainWindow::clientFromForm()
{
    Client client;

    client.setName(this->ui->clientFormNameInput->text());
    client.setPhoneNumber(this->ui->clientFormPhoneNumberInput->text());
    client.setAddress(this->ui->clientFormAddressInput->text());
    client.setEmail(this->ui->clientFormEmailInput->text());
    client.setPatience(this->ui->clientFormPatienceInput->value());
    client.setExperience(this->ui->clientFormExperienceInput->value());
    client.setActiveness(this->ui->clientFormActivenessInput->value());
    client.setAge(this->ui->clientFormAgeInput->value());
    client.setIncome(this->ui->clientFormIncomeInput->value());
    client.setRegularity(this->ui->clientFormRegularityInput->value());

    client.getPreferredAnimal().setTypeString(this->ui->clientFormPrefAnimalTypeInput->currentText());
    client.getPreferredAnimal().setBreed(this->ui->clientFormPrefBreedInput->text());
    client.getPreferredAnimal().setColor(this->ui->clientFormPrefColorInput->text());
    client.getPreferredAnimal().setAge(this->ui->clientFormPrefAgeInput->value());
    client.getPreferredAnimal().setSexString(this->ui->clientFormPrefSexInput->currentText());
    client.getPreferredAnimal().setWeight(this->ui->clientFormPrefWeightInput->value());
    client.getPreferredAnimal().setHeight(this->ui->clientFormPrefHeightInput->value());

    client.getPreferredAnimal().setNPA(0, this->ui->clientFormPrefLibidoInput->value());
    client.getPreferredAnimal().setNPA(1, this->ui->clientFormPrefAggressivenessInput->value());
    client.getPreferredAnimal().setNPA(2, this->ui->clientFormPrefExtroversionInput->value());
    client.getPreferredAnimal().setNPA(3, this->ui->clientFormPrefTemperInput->value());
    client.getPreferredAnimal().setNPA(4, this->ui->clientFormPrefObedienceInput->value());
    client.getPreferredAnimal().setNPA(5, this->ui->clientFormPrefEnduranceInput->value());
    client.getPreferredAnimal().setNPA(6, this->ui->clientFormPrefActivenessInput->value());
    client.getPreferredAnimal().setNPA(7, this->ui->clientFormPrefImpulsivityInput->value());
    client.getPreferredAnimal().setNPA(8, this->ui->clientFormPrefDistractibilityInput->value());
    client.getPreferredAnimal().setNPA(9, this->ui->clientFormPrefAdaptabilityInput->value());
    client.getPreferredAnimal().setNPA(10, this->ui->clientFormPrefRegularityInput->value());
    client.getPreferredAnimal().setNPA(11, this->ui->clientFormPrefIntelligenceInput->value());
    client.getPreferredAnimal().setNPA(12, this->ui->clientFormPrefIndependenceInput->value());
    client.getPreferredAnimal().setNPA(13, this->ui->clientFormPrefTrainingInput->value());
    client.getPreferredAnimal().setNPA(14, this->ui->clientFormPrefCostInput->value());

    return client;
}

void MainWindow::on_loginAsClientButton_clicked()
{
    auto index = this->ui->mainViewClientLoginList->currentIndex();

    if (!index.isValid()) return;

    this->loggedInUser = new Client(this->client_model.getList()[index.row()]);

    this->ui->addAnimalButton->setVisible(false);
    this->ui->animalFormSaveButton->setVisible(false);
    this->ui->animalFormCancelButton->setText("OK");
    this->ui->clientFormCancelButton->setVisible(false);
    this->ui->homeViewClientsButton->setText("View Your Profile");
    this->ui->homeViewAlgorithmButton->setVisible(false);
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientFormPage);

    Client *c = dynamic_cast<Client *>(this->loggedInUser);
    this->setClientForm(*c, true);

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void MainWindow::on_loginAsStaffButton_clicked()
{
    this->loggedInUser = new Staff();
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->homePage);
}

void MainWindow::on_addAnimalButton_clicked()
{
    this->setAnimalForm();
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_animalFormCancelButton_clicked()
{
    this->setAnimalForm();
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalFormSaveButton_clicked()
{
    if (!this->loggedInUser->isStaff()) return;

    Staff *staff = dynamic_cast<Staff *>(this->loggedInUser);
    Animal animal = this->animalFromForm();

    // save animal to database
    if (staff->animal_id_being_edited < 0)
    {
        SQLSerializer::addAnimal(animal);
    }
    else
    {
        animal.setId(staff->animal_id_being_edited);
        SQLSerializer::saveAnimal(animal);
    }
    staff->animal_id_being_edited = -1;

    // update list from database
    this->animal_model.setList(SQLSerializer::readAnimals());
    this->setAnimalForm();

    // reset stacked view to list
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalListView_doubleClicked(const QModelIndex &index)
{
    if (index.row() < 0 || index.row() >= this->animal_model.getList().size()) return;

    Animal a = this->animal_model.getElement(index.row());

    if (!this->loggedInUser->isStaff())
    {
        this->ui->animalFormNameInput->setEnabled(false);
        this->ui->animalFormTypeInput->setEnabled(false);
        this->ui->animalFormBreedInput->setEnabled(false);
        this->ui->animalFormColorInput->setEnabled(false);
        this->ui->animalFormAgeInput->setEnabled(false);
        this->ui->animalFormSexInput->setEnabled(false);
        this->ui->animalFormWeightInput->setEnabled(false);
        this->ui->animalFormHeightInput->setEnabled(false);
        this->ui->animalFormHealthInput->setEnabled(false);
        this->ui->animalFormLibidoInput->setEnabled(false);
        this->ui->animalFormAggressivenessInput->setEnabled(false);
        this->ui->animalFormExtroversionInput->setEnabled(false);
        this->ui->animalFormTemperInput->setEnabled(false);
        this->ui->animalFormObedienceInput->setEnabled(false);
        this->ui->animalFormEnduranceInput->setEnabled(false);
        this->ui->animalFormActivenessInput->setEnabled(false);
        this->ui->animalFormImpulsionInput->setEnabled(false);
        this->ui->animalFormDistractibilityInput->setEnabled(false);
        this->ui->animalFormAdaptabilityInput->setEnabled(false);
        this->ui->animalFormRegularityInput->setEnabled(false);
        this->ui->animalFormIntelligenceInput->setEnabled(false);
        this->ui->animalFormIndependenceInput->setEnabled(false);
        this->ui->animalFormTrainingInput->setEnabled(false);
        this->ui->animalFormCostInput->setEnabled(false);
        this->ui->animalFormSaveButton->setEnabled(false);
    }
    else
    {
        Staff *staff = dynamic_cast<Staff *>(this->loggedInUser);
        staff->animal_id_being_edited = a.getId();
    }
    
    this->setAnimalForm(a, this->loggedInUser->isStaff());

    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_clientListView_doubleClicked(const QModelIndex &index)
{
    if (index.row() <= 0 || index.row() >= this->client_model.getList().size()) return;

    Client c = this->client_model.getElement(index.row());
    this->setClientForm(c, false);

    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientFormPage);
}

void MainWindow::on_clientFormSaveButton_clicked()
{
    // create client with data from form
    Client client = this->clientFromForm();

    if (this->loggedInUser->isStaff())
    {
        // save client to database
        SQLSerializer::addClient(client);

        // update list from database
        this->setClientForm();

        // reset stacked view to list
        this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
    }
    else
    {
        Client *existing_client = dynamic_cast<Client *>(this->loggedInUser);
        client.setId(existing_client->getId());
        client.getPreferredAnimal().setId(existing_client->getPreferredAnimal().getId());
        SQLSerializer::saveClient(client);
    }

    this->client_model.setList(SQLSerializer::readClients());
}

void MainWindow::on_clientFormCancelButton_clicked()
{
    this->setClientForm();
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
}

void MainWindow::on_addClientButton_clicked()
{
    this->setClientForm();
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientFormPage);
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
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->animalsPage);
}

void MainWindow::on_homeViewClientsButton_clicked()
{

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->clientsPage);
}

void MainWindow::on_homeViewAlgorithmButton_clicked()
{

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->algorithmPage);
}
