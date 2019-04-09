#include "include/saveanimalcontrol.h"


SaveAnimalControl::SaveAnimalControl()
{
}

void SaveAnimalControl::launch(Ui::MainWindow *ui, User *loggedInUser, AnimalListModel *animal_model)
{
        Staff *staff = dynamic_cast<Staff *>(loggedInUser);
        Animal animal = this->animalFromForm(ui);
        if (animal.getValid() == false){
            QMessageBox messageBox;
            messageBox.critical(0,"Error","Please fill in all fields.");
            messageBox.setFixedSize(500,1000);
            return;
        }
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
        animal_model->setList(SQLSerializer::readAnimals());
        this->setAnimalForm(ui, animal);

        // reset stacked view to list
        ui->animalsStackedWidget->setCurrentWidget(ui->animalViewPage);
}

Animal SaveAnimalControl::animalFromForm(Ui::MainWindow *ui)
{
    Animal animal;

    if (ui->animalFormNameInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setName(ui->animalFormNameInput->text());
    }

    animal.setTypeString(ui->animalFormTypeInput->currentText());

    if (ui->animalFormBreedInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setBreed(ui->animalFormBreedInput->text());
    }


    if (ui->animalFormColorInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setColor(ui->animalFormColorInput->text());
    }

    if (ui->animalFormAgeInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setAge(ui->animalFormAgeInput->value());
    }

    if (ui->animalFormWeightInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setWeight(ui->animalFormWeightInput->value());
    }

    if (ui->animalFormWeightInput->text() == ""){
        animal.setValid(false);
    }else{
        animal.setHeight(ui->animalFormHeightInput->value());
    }

    animal.setNPA(0, ui->animalFormLibidoInput->value());
    animal.setNPA(1, ui->animalFormAggressivenessInput->value());
    animal.setNPA(2, ui->animalFormExtroversionInput->value());
    animal.setNPA(3, ui->animalFormTemperInput->value());
    animal.setNPA(4, ui->animalFormObedienceInput->value());
    animal.setNPA(5, ui->animalFormEnduranceInput->value());
    animal.setNPA(6, ui->animalFormActivenessInput->value());
    animal.setNPA(7, ui->animalFormImpulsionInput->value());
    animal.setNPA(8, ui->animalFormDistractibilityInput->value());
    animal.setNPA(9, ui->animalFormAdaptabilityInput->value());
    animal.setNPA(10, ui->animalFormRegularityInput->value());
    animal.setNPA(11, ui->animalFormIntelligenceInput->value());
    animal.setNPA(12, ui->animalFormIndependenceInput->value());
    animal.setNPA(13, ui->animalFormTrainingInput->value());
    animal.setNPA(14, ui->animalFormCostInput->value());

    return animal;
}


void SaveAnimalControl::setAnimalForm(Ui::MainWindow *ui, Animal &a, bool e)
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
