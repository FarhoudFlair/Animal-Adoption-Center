#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QStringListModel>
#include <QList>

#include "animallistmodel.h"
#include "clientlistmodel.h"
#include "animal.h"
#include "client.h"
#include "user.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
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
    void on_animalListView_doubleClicked(const QModelIndex &index);
    void on_clientListView_doubleClicked(const QModelIndex &index);
    void on_clientFormSaveButton_clicked();
    void on_clientFormCancelButton_clicked();
    void on_addClientButton_clicked();

private:
    Ui::MainWindow *ui;

    User *loggedInUser;
    AnimalListModel animal_model;
    ClientListModel client_model;
};

#endif // MAINWINDOW_H
