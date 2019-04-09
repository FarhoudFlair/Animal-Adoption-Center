#ifndef ACMALGORITHM_H
#define ACMALGORITHM_H

#include <QList>
#include <QDebug>

#include <utility>
#include <algorithm>
#include <functional>
#include <cmath>
#include <cassert>
#include <cstdarg>

#include "acmalgorithmmatch.h"
#include "animal.h"
#include "client.h"
#include "galeshapley.h"

class ACMAlgorithm
{
public:
    QList<ACMAlgorithmMatch<Animal, Client>> launch(QList<Animal> &, QList<Client> &);
};

#endif // ACMALGORITHM_H
