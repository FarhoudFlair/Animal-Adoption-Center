#include "include/animallistmodel.h"

AnimalListModel::AnimalListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int AnimalListModel::rowCount(const QModelIndex &parent) const {
    if (parent.isValid())
        return 0;

    return this->animal_list.size();
}

QVariant AnimalListModel::data(const QModelIndex &index, int role) const {
    if (index.row() < 0 || index.row() >= this->animal_list.size())
        return QVariant();

    if (role == Qt::DisplayRole) {
        const Animal &a = this->animal_list[index.row()];
        return QString("%1 (%2, %3 years)").arg(a.getName()).arg(a.getTypeString()).arg(a.getAge(), 0, 'f', 1);
    }

    return QVariant();
}

Qt::ItemFlags AnimalListModel::flags(const QModelIndex &index) const {
    return QAbstractListModel::flags(index) | Qt::ItemIsSelectable | Qt::ItemIsEnabled | Qt::ItemIsEditable;
}

QList<Animal> &AnimalListModel::getList() {
    return this->animal_list;
}

void AnimalListModel::setList(QList<Animal> &&animal_list) {
    this->animal_list = animal_list;
}

Animal &AnimalListModel::getElement(int index) {
    return this->animal_list[index];
}
