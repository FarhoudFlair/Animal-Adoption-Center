#include "include/algorithmlistmodel.h"

AlgorithmListModel::AlgorithmListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int AlgorithmListModel::rowCount(const QModelIndex &parent) const {
    if (parent.isValid())
        return 0;

    return this->matches.size();
}

QVariant AlgorithmListModel::data(const QModelIndex &index, int role) const {
    if (index.row() < 0 || index.row() >= this->matches.size())
        return QVariant();

    if (role == Qt::DisplayRole) {
        const ACMAlgorithmMatch<Animal, Client> &p = this->matches[index.row()];
        return QString("%1 -> %2 (%3)").arg(p.getWoman().getName()).arg(p.getMan().getName()).arg(p.getMan().getTypeString());
    }

    return QVariant();
}

Qt::ItemFlags AlgorithmListModel::flags(const QModelIndex &index) const {
    return QAbstractListModel::flags(index) | Qt::ItemIsSelectable | Qt::ItemIsEnabled | Qt::ItemIsEditable;
}

QList<ACMAlgorithmMatch<Animal, Client>> &AlgorithmListModel::getList() {
    return this->matches;
}

void AlgorithmListModel::setList(QList<ACMAlgorithmMatch<Animal, Client>> &&matches) {
    this->matches = matches;

    emit dataChanged(createIndex(0, 0), createIndex(matches.size() - 1, 0));
}

ACMAlgorithmMatch<Animal, Client> &AlgorithmListModel::getElement(int index) {
    return this->matches[index];
}
