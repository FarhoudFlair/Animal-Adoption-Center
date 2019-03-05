#include <QDebug>

#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "staff.h"
#include "animal.h"
#include "sqlserializer.h"

QStringList animals_to_string_list(const QList<Animal> &animals)
{
    QStringList ret;
    std::transform(animals.begin(), animals.end(), std::back_inserter(ret), [](auto a){
        return QString("%1 (%2, %3 years)").arg(a.getName()).arg(a.getTypeString()).arg(a.getAge(), 0, 'f', 1);
    });
    return ret;
}

QStringList clients_to_string_list(const QList<Client> &clients)
{
    QStringList ret;
    std::transform(clients.begin(), clients.end(), std::back_inserter(ret), [](auto c){
        return QString("%1 (%2)").arg(c.getName()).arg(c.getEmail());
    });
    return ret;
}

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    loggedInUser(nullptr)
{
    ui->setupUi(this);

    // reset forms
    this->resetAnimalForm();
    this->resetClientForm();

    // add animals to animal list view
    this->updateAnimalList(SQLSerializer::readAnimals());
    this->ui->animalListView->setModel(&this->animalModel);

    // set combo box items for animal type
    this->ui->animalFormTypeInput->addItems(animal_type_variants_str());
    this->ui->clientFormPrefAnimalTypeInput->addItems(animal_type_variants_str());

    // add clients to client list view
    this->updateClientList(SQLSerializer::readClients());
    this->ui->clientListView->setModel(&this->clientModel);
    this->ui->mainViewClientLoginList->setModel(&this->clientModel);

    // set default pages for stacked widgets
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->loginPage);
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
    this->ui->mainTabWidget->setCurrentWidget(this->ui->animalTab);
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);

    this->ui->editClientButton->setVisible(false);
    this->ui->editAnimalButton->setVisible(false);
}

MainWindow::~MainWindow()
{
    delete this->ui;
    if (this->loggedInUser != nullptr) delete this->loggedInUser;
}

void MainWindow::updateAnimalList(const QList<Animal> &animals)
{
    this->animals = animals;
    this->animalModel.setStringList(animals_to_string_list(animals));
}

void MainWindow::resetAnimalForm()
{
    this->ui->animalFormNameInput->setText("");
    this->ui->animalFormTypeInput->setCurrentIndex(0);
    this->ui->animalFormBreedInput->setText("");
    this->ui->animalFormColorInput->setText("");
    this->ui->animalFormAgeInput->setValue(0);
    this->ui->animalFormSexInput->setCurrentIndex(0);
    this->ui->animalFormWeightInput->setValue(0);
    this->ui->animalFormHeightInput->setValue(0);

    this->ui->animalFormLibidoInput->setValue(0);
    this->ui->animalFormAggressivenessInput->setValue(0);
    this->ui->animalFormExtroversionInput->setValue(0);
    this->ui->animalFormTemperInput->setValue(0);
    this->ui->animalFormObedienceInput->setValue(0);
    this->ui->animalFormEnduranceInput->setValue(0);
    this->ui->animalFormActivenessInput->setValue(0);
    this->ui->animalFormImpulsionInput->setValue(0);
    this->ui->animalFormDistractibilityInput->setValue(0);
    this->ui->animalFormAdaptabilityInput->setValue(0);
    this->ui->animalFormRegularityInput->setValue(0);
    this->ui->animalFormIntelligenceInput->setValue(0);
    this->ui->animalFormIndependenceInput->setValue(0);
    this->ui->animalFormTrainingInput->setValue(0);
    this->ui->animalFormCostInput->setValue(0);

    this->ui->animalFormNameInput->setEnabled(true);
    this->ui->animalFormTypeInput->setEnabled(true);
    this->ui->animalFormBreedInput->setEnabled(true);
    this->ui->animalFormColorInput->setEnabled(true);
    this->ui->animalFormAgeInput->setEnabled(true);
    this->ui->animalFormSexInput->setEnabled(true);
    this->ui->animalFormWeightInput->setEnabled(true);
    this->ui->animalFormHeightInput->setEnabled(true);

    this->ui->animalFormLibidoInput->setEnabled(true);
    this->ui->animalFormAggressivenessInput->setEnabled(true);
    this->ui->animalFormExtroversionInput->setEnabled(true);
    this->ui->animalFormTemperInput->setEnabled(true);
    this->ui->animalFormObedienceInput->setEnabled(true);
    this->ui->animalFormEnduranceInput->setEnabled(true);
    this->ui->animalFormActivenessInput->setEnabled(true);
    this->ui->animalFormImpulsionInput->setEnabled(true);
    this->ui->animalFormDistractibilityInput->setEnabled(true);
    this->ui->animalFormAdaptabilityInput->setEnabled(true);
    this->ui->animalFormRegularityInput->setEnabled(true);
    this->ui->animalFormIntelligenceInput->setEnabled(true);
    this->ui->animalFormIndependenceInput->setEnabled(true);
    this->ui->animalFormTrainingInput->setEnabled(true);
    this->ui->animalFormCostInput->setEnabled(true);

    this->ui->animalFormCancelButton->setEnabled(true);
    this->ui->animalFormSaveButton->setEnabled(true);
}

void MainWindow::updateClientList(const QList<Client> &clients)
{
    this->clients = clients;
    this->clientModel.setStringList(clients_to_string_list(this->clients));
}

void MainWindow::resetClientForm()
{
    this->ui->clientFormNameInput->setText("");
    this->ui->clientFormPhoneNumberInput->setText("");
    this->ui->clientFormAddressInput->setText("");
    this->ui->clientFormEmailInput->setText("");

    this->ui->clientFormPrefLibidoInput->setValue(0);
    this->ui->clientFormPrefAggressivenessInput->setValue(0);
    this->ui->clientFormPrefExtroversionInput->setValue(0);
    this->ui->clientFormPrefTemperInput->setValue(0);
    this->ui->clientFormPrefObedienceInput->setValue(0);
    this->ui->clientFormPrefEnduranceInput->setValue(0);
    this->ui->clientFormPrefActivenessInput->setValue(0);
    this->ui->clientFormPrefImpulsivityInput->setValue(0);
    this->ui->clientFormPrefDistractibilityInput->setValue(0);
    this->ui->clientFormPrefAdaptabilityInput->setValue(0);
    this->ui->clientFormPrefRegularityInput->setValue(0);
    this->ui->clientFormPrefIntelligenceInput->setValue(0);
    this->ui->clientFormPrefIndependenceInput->setValue(0);
    this->ui->clientFormPrefTrainingInput->setValue(0);
    this->ui->clientFormPrefCostInput->setValue(0);

    this->ui->clientFormNameInput->setEnabled(true);
    this->ui->clientFormPhoneNumberInput->setEnabled(true);
    this->ui->clientFormAddressInput->setEnabled(true);
    this->ui->clientFormEmailInput->setEnabled(true);

    this->ui->clientFormPrefLibidoInput->setEnabled(true);
    this->ui->clientFormPrefAggressivenessInput->setEnabled(true);
    this->ui->clientFormPrefExtroversionInput->setEnabled(true);
    this->ui->clientFormPrefTemperInput->setEnabled(true);
    this->ui->clientFormPrefObedienceInput->setEnabled(true);
    this->ui->clientFormPrefEnduranceInput->setEnabled(true);
    this->ui->clientFormPrefActivenessInput->setEnabled(true);
    this->ui->clientFormPrefImpulsivityInput->setEnabled(true);
    this->ui->clientFormPrefDistractibilityInput->setEnabled(true);
    this->ui->clientFormPrefAdaptabilityInput->setEnabled(true);
    this->ui->clientFormPrefRegularityInput->setEnabled(true);
    this->ui->clientFormPrefIntelligenceInput->setEnabled(true);
    this->ui->clientFormPrefIndependenceInput->setEnabled(true);
    this->ui->clientFormPrefTrainingInput->setEnabled(true);
    this->ui->clientFormPrefCostInput->setEnabled(true);
}

void MainWindow::on_loginAsClientButton_clicked()
{
    auto index = this->ui->mainViewClientLoginList->currentIndex();

    if (!index.isValid()) return;

    this->loggedInUser = new Client(this->clients[index.row()]);

    this->ui->addAnimalButton->setVisible(false);
    this->ui->editAnimalButton->setVisible(false);
    this->ui->mainTabWidget->removeTab(1);

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->mainPage);
}

void MainWindow::on_loginAsStaffButton_clicked()
{
    this->loggedInUser = new Staff();

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->mainPage);
}

void MainWindow::on_addAnimalButton_clicked()
{
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_animalFormCancelButton_clicked()
{
    this->resetAnimalForm();

    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalFormSaveButton_clicked()
{
    // create animal with data from form
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

    // ave animal to database
    SQLSerializer::addAnimal(animal);

    // update list from database
    this->updateAnimalList(SQLSerializer::readAnimals());
    this->resetAnimalForm();

    // reset stacked view to list
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalListView_doubleClicked(const QModelIndex &index)
{
    // TODO: disable fields when a client is viewing the animal
    // if (!this->loggedInUser->isStaff())
    // {
    this->ui->animalFormNameInput->setEnabled(false);
    this->ui->animalFormTypeInput->setEnabled(false);
    this->ui->animalFormBreedInput->setEnabled(false);
    this->ui->animalFormColorInput->setEnabled(false);
    this->ui->animalFormAgeInput->setEnabled(false);
    this->ui->animalFormSexInput->setEnabled(false);
    this->ui->animalFormWeightInput->setEnabled(false);
    this->ui->animalFormHeightInput->setEnabled(false);
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
    this->ui->animalFormCostInput->setEnabled(false);
    this->ui->animalFormSaveButton->setEnabled(false);
    // }

    Animal a = this->animals[index.row()];
    this->ui->animalFormNameInput->setText(a.getName());
    this->ui->animalFormTypeInput->setCurrentText(a.getTypeString());
    this->ui->animalFormBreedInput->setText(a.getBreed());
    this->ui->animalFormColorInput->setText(a.getColor());
    this->ui->animalFormAgeInput->setValue(a.getAge());
    this->ui->animalFormSexInput->setCurrentText(a.getSexString());
    this->ui->animalFormWeightInput->setValue(a.getWeight());
    this->ui->animalFormHeightInput->setValue(a.getHeight());

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

    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_clientListView_doubleClicked(const QModelIndex &index)
{
    this->ui->clientFormNameInput->setEnabled(false);
    this->ui->clientFormPhoneNumberInput->setEnabled(false);
    this->ui->clientFormAddressInput->setEnabled(false);
    this->ui->clientFormEmailInput->setEnabled(false);
    this->ui->clientFormPrefLibidoInput->setEnabled(false);
    this->ui->clientFormPrefAggressivenessInput->setEnabled(false);
    this->ui->clientFormPrefExtroversionInput->setEnabled(false);
    this->ui->clientFormPrefTemperInput->setEnabled(false);
    this->ui->clientFormPrefObedienceInput->setEnabled(false);
    this->ui->clientFormPrefEnduranceInput->setEnabled(false);
    this->ui->clientFormPrefActivenessInput->setEnabled(false);
    this->ui->clientFormPrefImpulsivityInput->setEnabled(false);
    this->ui->clientFormPrefDistractibilityInput->setEnabled(false);
    this->ui->clientFormPrefAdaptabilityInput->setEnabled(false);
    this->ui->clientFormPrefRegularityInput->setEnabled(false);
    this->ui->clientFormPrefIntelligenceInput->setEnabled(false);
    this->ui->clientFormPrefIndependenceInput->setEnabled(false);
    this->ui->clientFormPrefTrainingInput->setEnabled(false);
    this->ui->clientFormPrefCostInput->setEnabled(false);

    Client c = this->clients[index.row()];
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

    this->ui->animalFormLibidoInput->setValue(c.getPreferredAnimal().getNPA(0));
    this->ui->animalFormAggressivenessInput->setValue(c.getPreferredAnimal().getNPA(1));
    this->ui->animalFormExtroversionInput->setValue(c.getPreferredAnimal().getNPA(2));
    this->ui->animalFormTemperInput->setValue(c.getPreferredAnimal().getNPA(3));
    this->ui->animalFormObedienceInput->setValue(c.getPreferredAnimal().getNPA(4));
    this->ui->animalFormEnduranceInput->setValue(c.getPreferredAnimal().getNPA(5));
    this->ui->animalFormActivenessInput->setValue(c.getPreferredAnimal().getNPA(6));
    this->ui->animalFormImpulsionInput->setValue(c.getPreferredAnimal().getNPA(7));
    this->ui->animalFormDistractibilityInput->setValue(c.getPreferredAnimal().getNPA(8));
    this->ui->animalFormAdaptabilityInput->setValue(c.getPreferredAnimal().getNPA(9));
    this->ui->animalFormRegularityInput->setValue(c.getPreferredAnimal().getNPA(10));
    this->ui->animalFormIntelligenceInput->setValue(c.getPreferredAnimal().getNPA(11));
    this->ui->animalFormIndependenceInput->setValue(c.getPreferredAnimal().getNPA(12));

    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_editAnimalButton_clicked()
{
}

void MainWindow::on_clientFormSaveButton_clicked()
{
    // create client with data from form
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

    // ave client to database
    SQLSerializer::addClient(client);

    // update list from database
    this->updateClientList(SQLSerializer::readClients());
    this->resetClientForm();

    // reset stacked view to list
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
}

void MainWindow::on_clientFormCancelButton_clicked()
{
    this->resetClientForm();
    
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
}

void MainWindow::on_addClientButton_clicked()
{
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientFormPage);
}
