#include "include/viewownprofilecontrol.h"

ViewOwnProfileControl::ViewOwnProfileControl()
{

}

void ViewOwnProfileControl::launch(Ui::MainWindow *ui, User *loggedInUser)
{
    Client *c = dynamic_cast<Client *>(loggedInUser);

    ui->clientFormNameInput->setText(c->getName());
    ui->clientFormPhoneNumberInput->setText(c->getPhoneNumber());
    ui->clientFormAddressInput->setText(c->getAddress());
    ui->clientFormEmailInput->setText(c->getEmail());
    ui->clientFormPatienceInput->setValue(c->getPatience());
    ui->clientFormExperienceInput->setValue(c->getExperience());
    ui->clientFormActivenessInput->setValue(c->getActiveness());
    ui->clientFormAgeInput->setValue(c->getAge());
    ui->clientFormIncomeInput->setValue(c->getIncome());
    ui->clientFormRegularityInput->setValue(c->getRegularity());

    ui->clientFormPrefAnimalTypeInput->setCurrentText(c->getPreferredAnimal().getTypeString());
    ui->clientFormPrefBreedInput->setText(c->getPreferredAnimal().getBreed());
    ui->clientFormPrefColorInput->setText(c->getPreferredAnimal().getColor());
    ui->clientFormPrefAgeInput->setValue(c->getPreferredAnimal().getAge());
    ui->clientFormPrefSexInput->setCurrentText(c->getPreferredAnimal().getSexString());
    ui->clientFormPrefWeightInput->setValue(c->getPreferredAnimal().getWeight());
    ui->clientFormPrefHeightInput->setValue(c->getPreferredAnimal().getHeight());

    ui->clientFormPrefLibidoInput->setValue(c->getPreferredAnimal().getNPA(0));
    ui->clientFormPrefAggressivenessInput->setValue(c->getPreferredAnimal().getNPA(1));
    ui->clientFormPrefExtroversionInput->setValue(c->getPreferredAnimal().getNPA(2));
    ui->clientFormPrefTemperInput->setValue(c->getPreferredAnimal().getNPA(3));
    ui->clientFormPrefObedienceInput->setValue(c->getPreferredAnimal().getNPA(4));
    ui->clientFormPrefEnduranceInput->setValue(c->getPreferredAnimal().getNPA(5));
    ui->clientFormPrefActivenessInput->setValue(c->getPreferredAnimal().getNPA(6));
    ui->clientFormPrefImpulsivityInput->setValue(c->getPreferredAnimal().getNPA(7));
    ui->clientFormPrefDistractibilityInput->setValue(c->getPreferredAnimal().getNPA(8));
    ui->clientFormPrefAdaptabilityInput->setValue(c->getPreferredAnimal().getNPA(9));
    ui->clientFormPrefRegularityInput->setValue(c->getPreferredAnimal().getNPA(10));
    ui->clientFormPrefIntelligenceInput->setValue(c->getPreferredAnimal().getNPA(11));
    ui->clientFormPrefIndependenceInput->setValue(c->getPreferredAnimal().getNPA(12));
    ui->clientFormPrefTrainingInput->setValue(c->getPreferredAnimal().getNPA(13));
    ui->clientFormPrefCostInput->setValue(c->getPreferredAnimal().getNPA(14));

    ui->clientFormNameInput->setEnabled(true);
    ui->clientFormPhoneNumberInput->setEnabled(true);
    ui->clientFormAddressInput->setEnabled(true);
    ui->clientFormEmailInput->setEnabled(true);
    ui->clientFormPatienceInput->setEnabled(true);
    ui->clientFormExperienceInput->setEnabled(true);
    ui->clientFormActivenessInput->setEnabled(true);
    ui->clientFormAgeInput->setEnabled(true);
    ui->clientFormIncomeInput->setEnabled(true);
    ui->clientFormRegularityInput->setEnabled(true);

    ui->clientFormPrefAnimalTypeInput->setEnabled(true);
    ui->clientFormPrefBreedInput->setEnabled(true);
    ui->clientFormPrefColorInput->setEnabled(true);
    ui->clientFormPrefAgeInput->setEnabled(true);
    ui->clientFormPrefSexInput->setEnabled(true);
    ui->clientFormPrefWeightInput->setEnabled(true);
    ui->clientFormPrefHeightInput->setEnabled(true);

    ui->clientFormPrefLibidoInput->setEnabled(true);
    ui->clientFormPrefAggressivenessInput->setEnabled(true);
    ui->clientFormPrefExtroversionInput->setEnabled(true);
    ui->clientFormPrefTemperInput->setEnabled(true);
    ui->clientFormPrefObedienceInput->setEnabled(true);
    ui->clientFormPrefEnduranceInput->setEnabled(true);
    ui->clientFormPrefActivenessInput->setEnabled(true);
    ui->clientFormPrefImpulsivityInput->setEnabled(true);
    ui->clientFormPrefDistractibilityInput->setEnabled(true);
    ui->clientFormPrefAdaptabilityInput->setEnabled(true);
    ui->clientFormPrefRegularityInput->setEnabled(true);
    ui->clientFormPrefIntelligenceInput->setEnabled(true);
    ui->clientFormPrefIndependenceInput->setEnabled(true);
    ui->clientFormPrefTrainingInput->setEnabled(true);
    ui->clientFormPrefCostInput->setEnabled(true);

    ui->clientFormSaveButton->setEnabled(true);
    ui->clientFormCancelButton->setEnabled(true);

    ui->mainStackedWidget->setCurrentWidget(ui->clientsPage);

}

