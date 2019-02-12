#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QStringListModel>
#include <QList>

#include "animal.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    void updateAnimalList(const QList<Animal> &animals);

    void resetAnimalForm();

private slots:
    void on_loginAsClientButton_clicked();
    void on_loginAsStaffButton_clicked();
    void on_addAnimalButton_clicked();
    void on_animalFormCancelButton_clicked();
    void on_animalFormSaveButton_clicked();

private:
    Ui::MainWindow *ui;

    bool loggedInAsStaff;
    QStringListModel animalModel;
    QList<Animal> animals;
};

#endif // MAINWINDOW_H
