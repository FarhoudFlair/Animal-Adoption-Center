#ifndef ANIMALLISTMODEL_H
#define ANIMALLISTMODEL_H

#include <QAbstractListModel>

#include "include/animal.h"

class AnimalListModel: public QAbstractListModel
{
public:
    AnimalListModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex & = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    Qt::ItemFlags flags(const QModelIndex &index) const;

    QList<Animal> &getList();
    void setList(QList<Animal> &&animal_list);

    Animal &getElement(int index);

private:
    QList<Animal> animal_list;
};

#endif // ANIMALLISTMODEL
