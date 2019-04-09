#include "include/viewclientprofilecontrol.h"

ViewClientProfileControl::ViewClientProfileControl()
{

}

void ViewClientProfileControl::launch(Ui::MainWindow *ui, ClientListModel *client_model, int index)
{
    Client c = client_model->getElement(index);
    this->setClientForm(ui, c, false);
    ui->clientsStackedWidget->setCurrentWidget(ui->clientFormPage);
}


void ViewClientProfileControl::setClientForm(Ui::MainWindow *ui, Client &c, bool e)
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
