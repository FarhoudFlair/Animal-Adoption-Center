#include "include/addanimalcontrol.h"

AddAnimalControl::AddAnimalControl()
{

}

void AddAnimalControl::launch(Ui::MainWindow *ui)
{
    Animal dummy;
    this->setAnimalForm(ui, dummy);
    ui->animalsStackedWidget->setCurrentWidget(ui->animalFormPage);
}

void AddAnimalControl::setAnimalForm(Ui::MainWindow *ui, Animal &a, bool e)
{
    ui->animalFormNameInput->setText(a.getName());
    ui->animalFormTypeInput->setCurrentText(a.getTypeString());
    ui->animalFormBreedInput->setText(a.getBreed());
    ui->animalFormColorInput->setText(a.getColor());
    ui->animalFormAgeInput->setValue(a.getAge());
    ui->animalFormSexInput->setCurrentText(a.getSexString());
    ui->animalFormWeightInput->setValue(a.getWeight());
    ui->animalFormHeightInput->setValue(a.getHeight());
    ui->animalFormHealthInput->setValue(a.getHealth());

    ui->animalFormLibidoInput->setValue(a.getNPA(0));
    ui->animalFormAggressivenessInput->setValue(a.getNPA(1));
    ui->animalFormExtroversionInput->setValue(a.getNPA(2));
    ui->animalFormTemperInput->setValue(a.getNPA(3));
    ui->animalFormObedienceInput->setValue(a.getNPA(4));
    ui->animalFormEnduranceInput->setValue(a.getNPA(5));
    ui->animalFormActivenessInput->setValue(a.getNPA(6));
    ui->animalFormImpulsionInput->setValue(a.getNPA(7));
    ui->animalFormDistractibilityInput->setValue(a.getNPA(8));
    ui->animalFormAdaptabilityInput->setValue(a.getNPA(9));
    ui->animalFormRegularityInput->setValue(a.getNPA(10));
    ui->animalFormIntelligenceInput->setValue(a.getNPA(11));
    ui->animalFormIndependenceInput->setValue(a.getNPA(12));
    ui->animalFormTrainingInput->setValue(a.getNPA(13));
    ui->animalFormCostInput->setValue(a.getNPA(14));

    ui->animalFormNameInput->setEnabled(e);
    ui->animalFormTypeInput->setEnabled(e);
    ui->animalFormBreedInput->setEnabled(e);
    ui->animalFormColorInput->setEnabled(e);
    ui->animalFormAgeInput->setEnabled(e);
    ui->animalFormSexInput->setEnabled(e);
    ui->animalFormWeightInput->setEnabled(e);
    ui->animalFormHeightInput->setEnabled(e);
    ui->animalFormHealthInput->setEnabled(e);

    ui->animalFormLibidoInput->setEnabled(e);
    ui->animalFormAggressivenessInput->setEnabled(e);
    ui->animalFormExtroversionInput->setEnabled(e);
    ui->animalFormTemperInput->setEnabled(e);
    ui->animalFormObedienceInput->setEnabled(e);
    ui->animalFormEnduranceInput->setEnabled(e);
    ui->animalFormActivenessInput->setEnabled(e);
    ui->animalFormImpulsionInput->setEnabled(e);
    ui->animalFormDistractibilityInput->setEnabled(e);
    ui->animalFormAdaptabilityInput->setEnabled(e);
    ui->animalFormRegularityInput->setEnabled(e);
    ui->animalFormIntelligenceInput->setEnabled(e);
    ui->animalFormIndependenceInput->setEnabled(e);
    ui->animalFormTrainingInput->setEnabled(e);
    ui->animalFormCostInput->setEnabled(e);

    ui->animalFormCancelButton->setEnabled(true);
    ui->animalFormSaveButton->setEnabled(true);
}



