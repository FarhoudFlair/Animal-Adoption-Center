#ifndef ACMALGORITHM_H
#define ACMALGORITHM_H

#include <QList>
#include <QDebug>

#include <utility>
#include <cmath>
#include <algorithm>

#include "animal.h"
#include "client.h"

class ACMAlgorithm
{
public:
    QList<std::pair<Animal, Client>> launch(QList<Animal> &, QList<Client> &);
};

#endif // ACMALGORITHM_H
