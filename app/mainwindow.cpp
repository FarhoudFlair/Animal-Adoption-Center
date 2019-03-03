#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <algorithm>

#include "animal.h"
#include "sqlserializer.h"

#include <QDebug>

QStringList animals_to_string_list(const QList<Animal> &animals)
{
    QStringList ret;
    std::transform(animals.begin(), animals.end(), std::back_inserter(ret), [](auto a){
        return QString("%1 (%2, %3 years)").arg(a.getName()).arg(a.getTypeString()).arg(a.getAge());
    });
    return ret;
}

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // reset animal form
    this->resetAnimalForm();

    // add animals to animal list view
    this->updateAnimalList(SQLSerializer::readAnimals());
    this->ui->animalListView->setModel(&this->animalModel);

    // set combo box items for animal type
    this->ui->animalFormTypeInput->addItems(animal_type_variants_str());
    this->ui->clientFormAnimalTypeInput->addItems(animal_type_variants_str());

    // set default pages for stacked widgets
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->loginPage);
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
    this->ui->mainTabWidget->setCurrentWidget(this->ui->animalTab);
    this->ui->clientsStackedWidget->setCurrentWidget(this->ui->clientViewPage);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::updateAnimalList(const QList<Animal> &animals)
{
    this->animals = animals;
    this->animalModel.setStringList(animals_to_string_list(this->animals));
}

void MainWindow::resetAnimalForm()
{
    this->ui->animalFormNameInput->setText("");
    this->ui->animalFormTypeInput->setCurrentIndex(0);
    this->ui->animalFormBreedInput->setText("");
    this->ui->animalFormColorInput->setText("");
    this->ui->animalFormAgeInput->setValue(0);
    this->ui->animalFormGenderInput->setCurrentIndex(0);
    this->ui->animalFormWeightInput->setValue(0);
    this->ui->animalFormHeightInput->setValue(0);
}

void MainWindow::on_loginAsClientButton_clicked()
{
    this->loggedInAsStaff = false;

    this->ui->addAnimalButton->setEnabled(false);

    this->ui->mainStackedWidget->setCurrentWidget(this->ui->mainPage);
}

void MainWindow::on_loginAsStaffButton_clicked()
{
    this->loggedInAsStaff = true;
    this->ui->mainStackedWidget->setCurrentWidget(this->ui->mainPage);
}

void MainWindow::on_addAnimalButton_clicked()
{
    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalFormPage);
}

void MainWindow::on_animalFormCancelButton_clicked()
{
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
    animal.setGenderString(this->ui->animalFormGenderInput->currentText());
    animal.setWeight(this->ui->animalFormWeightInput->value());
    animal.setHeight(this->ui->animalFormHeightInput->value());

    // ave animal to database
    SQLSerializer::saveAnimal(animal);

    // update list from database
    this->updateAnimalList(SQLSerializer::readAnimals());
    this->resetAnimalForm();

    this->ui->animalsStackedWidget->setCurrentWidget(this->ui->animalViewPage);
}

void MainWindow::on_animalListView_doubleClicked(const QModelIndex &index)
{
    qDebug() << "test" << endl;
}

void MainWindow::on_listView_doubleClicked(const QModelIndex &index)
{

}
