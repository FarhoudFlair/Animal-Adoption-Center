#include "include/saveclientcontrol.h"


SaveClientControl::SaveClientControl()
{

}


void SaveClientControl::launch(Ui::MainWindow *ui,  User *loggedInUser, ClientListModel *client_model)
{
    // create client with data from form
    Client client = this->clientFromForm(ui);

    if (client.getValid() == false){
        QMessageBox messageBox;
        messageBox.critical(0,"Error","Please fill in all fields.");
        messageBox.setFixedSize(500,1000);
        return;
    }

    if (loggedInUser->isStaff())
    {
        // save client to database
        if (client.getValid() != false){
            SQLSerializer::addClient(client);
        }
        // update list from database
        Client dummy;
        setClientForm(ui, dummy);

        // reset stacked view to list
        client_model->setList(SQLSerializer::readClients());
        ui->clientsStackedWidget->setCurrentWidget(ui->clientViewPage);

    }
    else
    {
        Client *existing_client = dynamic_cast<Client *>(loggedInUser);
        client.setId(existing_client->getId());
        client.getPreferredAnimal().setId(existing_client->getPreferredAnimal().getId());
        SQLSerializer::saveClient(client);
        client_model->setList(SQLSerializer::readClients());
        ui->mainStackedWidget->setCurrentWidget(ui->homePage);
    }


}


Client SaveClientControl::clientFromForm(Ui::MainWindow *ui)
{
    Client client;

    if (ui->clientFormNameInput->text() == ""){
        client.setValid(false);
    }else{
        client.setName(ui->clientFormNameInput->text());
    }

    if (ui->clientFormPhoneNumberInput->text() == ""){
        client.setValid(false);
    }else{
         client.setPhoneNumber(ui->clientFormPhoneNumberInput->text());
    }

    if (ui->clientFormAddressInput->text() == ""){
        client.setValid(false);
    }else{
        client.setAddress(ui->clientFormAddressInput->text());
    }

    if (ui->clientFormEmailInput->text() == ""){
        client.setValid(false);
    }else{
        client.setEmail(ui->clientFormEmailInput->text());
    }

    client.setPatience(ui->clientFormPatienceInput->value());
    client.setExperience(ui->clientFormExperienceInput->value());
    client.setActiveness(ui->clientFormActivenessInput->value());

    if (ui->clientFormAgeInput->value() < 18){
        client.setValid(false);
    }else{
        client.setAge(ui->clientFormAgeInput->value());
    }

    if (ui->clientFormIncomeInput->value() < std::numeric_limits<double>::epsilon()){
        client.setValid(false);
    }else{
        client.setIncome(ui->clientFormIncomeInput->value());
    }

    client.setRegularity(ui->clientFormRegularityInput->value());

    client.getPreferredAnimal().setTypeString(ui->clientFormPrefAnimalTypeInput->currentText());
    client.getPreferredAnimal().setBreed(ui->clientFormPrefBreedInput->text());
    client.getPreferredAnimal().setColor(ui->clientFormPrefColorInput->text());
    client.getPreferredAnimal().setAge(ui->clientFormPrefAgeInput->value());
    client.getPreferredAnimal().setSexString(ui->clientFormPrefSexInput->currentText());
    client.getPreferredAnimal().setWeight(ui->clientFormPrefWeightInput->value());
    client.getPreferredAnimal().setHeight(ui->clientFormPrefHeightInput->value());

    client.getPreferredAnimal().setNPA(0, ui->clientFormPrefLibidoInput->value());
    client.getPreferredAnimal().setNPA(1, ui->clientFormPrefAggressivenessInput->value());
    client.getPreferredAnimal().setNPA(2, ui->clientFormPrefExtroversionInput->value());
    client.getPreferredAnimal().setNPA(3, ui->clientFormPrefTemperInput->value());
    client.getPreferredAnimal().setNPA(4, ui->clientFormPrefObedienceInput->value());
    client.getPreferredAnimal().setNPA(5, ui->clientFormPrefEnduranceInput->value());
    client.getPreferredAnimal().setNPA(6, ui->clientFormPrefActivenessInput->value());
    client.getPreferredAnimal().setNPA(7, ui->clientFormPrefImpulsivityInput->value());
    client.getPreferredAnimal().setNPA(8, ui->clientFormPrefDistractibilityInput->value());
    client.getPreferredAnimal().setNPA(9, ui->clientFormPrefAdaptabilityInput->value());
    client.getPreferredAnimal().setNPA(10, ui->clientFormPrefRegularityInput->value());
    client.getPreferredAnimal().setNPA(11, ui->clientFormPrefIntelligenceInput->value());
    client.getPreferredAnimal().setNPA(12, ui->clientFormPrefIndependenceInput->value());
    client.getPreferredAnimal().setNPA(13, ui->clientFormPrefTrainingInput->value());
    client.getPreferredAnimal().setNPA(14, ui->clientFormPrefCostInput->value());

    return client;
}


void SaveClientControl::setClientForm(Ui::MainWindow *ui, Client &c, bool e)
{
    ui->clientFormNameInput->setText(c.getName());
    ui->clientFormPhoneNumberInput->setText(c.getPhoneNumber());
    ui->clientFormAddressInput->setText(c.getAddress());
    ui->clientFormEmailInput->setText(c.getEmail());
    ui->clientFormPatienceInput->setValue(c.getPatience());
    ui->clientFormExperienceInput->setValue(c.getExperience());
    ui->clientFormActivenessInput->setValue(c.getActiveness());
    ui->clientFormAgeInput->setValue(c.getAge());
    ui->clientFormIncomeInput->setValue(c.getIncome());
    ui->clientFormRegularityInput->setValue(c.getRegularity());

    ui->clientFormPrefAnimalTypeInput->setCurrentText(c.getPreferredAnimal().getTypeString());
    ui->clientFormPrefBreedInput->setText(c.getPreferredAnimal().getBreed());
    ui->clientFormPrefColorInput->setText(c.getPreferredAnimal().getColor());
    ui->clientFormPrefAgeInput->setValue(c.getPreferredAnimal().getAge());
    ui->clientFormPrefSexInput->setCurrentText(c.getPreferredAnimal().getSexString());
    ui->clientFormPrefWeightInput->setValue(c.getPreferredAnimal().getWeight());
    ui->clientFormPrefHeightInput->setValue(c.getPreferredAnimal().getHeight());

    ui->clientFormPrefLibidoInput->setValue(c.getPreferredAnimal().getNPA(0));
    ui->clientFormPrefAggressivenessInput->setValue(c.getPreferredAnimal().getNPA(1));
    ui->clientFormPrefExtroversionInput->setValue(c.getPreferredAnimal().getNPA(2));
    ui->clientFormPrefTemperInput->setValue(c.getPreferredAnimal().getNPA(3));
    ui->clientFormPrefObedienceInput->setValue(c.getPreferredAnimal().getNPA(4));
    ui->clientFormPrefEnduranceInput->setValue(c.getPreferredAnimal().getNPA(5));
    ui->clientFormPrefActivenessInput->setValue(c.getPreferredAnimal().getNPA(6));
    ui->clientFormPrefImpulsivityInput->setValue(c.getPreferredAnimal().getNPA(7));
    ui->clientFormPrefDistractibilityInput->setValue(c.getPreferredAnimal().getNPA(8));
    ui->clientFormPrefAdaptabilityInput->setValue(c.getPreferredAnimal().getNPA(9));
    ui->clientFormPrefRegularityInput->setValue(c.getPreferredAnimal().getNPA(10));
    ui->clientFormPrefIntelligenceInput->setValue(c.getPreferredAnimal().getNPA(11));
    ui->clientFormPrefIndependenceInput->setValue(c.getPreferredAnimal().getNPA(12));
    ui->clientFormPrefTrainingInput->setValue(c.getPreferredAnimal().getNPA(13));
    ui->clientFormPrefCostInput->setValue(c.getPreferredAnimal().getNPA(14));

    ui->clientFormNameInput->setEnabled(e);
    ui->clientFormPhoneNumberInput->setEnabled(e);
    ui->clientFormAddressInput->setEnabled(e);
    ui->clientFormEmailInput->setEnabled(e);
    ui->clientFormPatienceInput->setEnabled(e);
    ui->clientFormExperienceInput->setEnabled(e);
    ui->clientFormActivenessInput->setEnabled(e);
    ui->clientFormAgeInput->setEnabled(e);
    ui->clientFormIncomeInput->setEnabled(e);
    ui->clientFormRegularityInput->setEnabled(e);

    ui->clientFormPrefAnimalTypeInput->setEnabled(e);
    ui->clientFormPrefBreedInput->setEnabled(e);
    ui->clientFormPrefColorInput->setEnabled(e);
    ui->clientFormPrefAgeInput->setEnabled(e);
    ui->clientFormPrefSexInput->setEnabled(e);
    ui->clientFormPrefWeightInput->setEnabled(e);
    ui->clientFormPrefHeightInput->setEnabled(e);

    ui->clientFormPrefLibidoInput->setEnabled(e);
    ui->clientFormPrefAggressivenessInput->setEnabled(e);
    ui->clientFormPrefExtroversionInput->setEnabled(e);
    ui->clientFormPrefTemperInput->setEnabled(e);
    ui->clientFormPrefObedienceInput->setEnabled(e);
    ui->clientFormPrefEnduranceInput->setEnabled(e);
    ui->clientFormPrefActivenessInput->setEnabled(e);
    ui->clientFormPrefImpulsivityInput->setEnabled(e);
    ui->clientFormPrefDistractibilityInput->setEnabled(e);
    ui->clientFormPrefAdaptabilityInput->setEnabled(e);
    ui->clientFormPrefRegularityInput->setEnabled(e);
    ui->clientFormPrefIntelligenceInput->setEnabled(e);
    ui->clientFormPrefIndependenceInput->setEnabled(e);
    ui->clientFormPrefTrainingInput->setEnabled(e);
    ui->clientFormPrefCostInput->setEnabled(e);

    ui->clientFormSaveButton->setEnabled(true);
    ui->clientFormCancelButton->setEnabled(true);
}

