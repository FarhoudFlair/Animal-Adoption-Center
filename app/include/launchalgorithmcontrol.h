#ifndef LAUNCHALGORITHMCONTROL_H
#define LAUNCHALGORITHMCONTROL_H

#include <utility>

#include "include/acmalgorithm.h"
#include "include/animallistmodel.h"
#include "include/clientlistmodel.h"
#include "include/algorithmlistmodel.h"
#include "include/acmalgorithmmatch.h"

#include "ui_mainwindow.h"

class LaunchAlgorithmControl
{
public:
    void launch(QList<Animal> &, QList<Client> &, Ui::MainWindow *);
};

#endif // LAUNCHALGORITHMCONTROL_H
