#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QStringListModel>
#include <QList>
#include <QDebug>
#include <QMessageBox>

#include <limits>

#include "animallistmodel.h"
#include "clientlistmodel.h"
#include "animal.h"
#include "client.h"
#include "user.h"
#include "ui_mainwindow.h"

#include "include/staff.h"
#include "include/animal.h"
#include "include/sqlserializer.h"
#include "include/applicationcontrol.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    void setAnimalForm(bool = true);
    void setAnimalForm(Animal &, bool = true);
    Animal animalFromForm();

    void setClientForm(bool = true);
    void setClientForm(Client &, bool = true);
    Client clientFromForm();

private slots:
    void on_loginAsClientButton_clicked();
    void on_loginAsStaffButton_clicked();
    void on_addAnimalButton_clicked();
    void on_animalFormCancelButton_clicked();
    void on_animalFormSaveButton_clicked();
    void on_animalListView_doubleClicked(const QModelIndex &);
    void on_clientListView_doubleClicked(const QModelIndex &);
    void on_clientFormSaveButton_clicked();
    void on_clientFormCancelButton_clicked();
    void on_addClientButton_clicked();

    void on_clientLoginClientListView_doubleClicked(const QModelIndex &);

    void on_animalBackButton_clicked();
    void on_clientBackButton_clicked();
    void on_algorithmBackButton_clicked();

    void on_homeViewAnimalsButton_clicked();
    void on_homeViewClientsButton_clicked();
    void on_homeViewAlgorithmButton_clicked();

private:
    Ui::MainWindow *ui;

    User *loggedInUser;
    AnimalListModel animal_model;
    ClientListModel client_model;
};

#endif // MAINWINDOW_H
