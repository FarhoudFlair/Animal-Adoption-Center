#include "include/clientlistmodel.h"

ClientListModel::ClientListModel(QObject *parent)
    : QAbstractListModel(parent)
{
}

int ClientListModel::rowCount(const QModelIndex &parent) const {
    if (parent.isValid())
        return 0;

    return this->client_list.size();
}

QVariant ClientListModel::data(const QModelIndex &index, int role) const {
    if (index.row() < 0 || index.row() >= this->client_list.size())
        return QVariant();

    if (role == Qt::DisplayRole) {
        const Client &c = this->client_list[index.row()];
        return QString("%1 (%2)").arg(c.getName()).arg(c.getEmail());
    }

    return QVariant();
}

Qt::ItemFlags ClientListModel::flags(const QModelIndex &index) const {
    return QAbstractListModel::flags(index) | Qt::ItemIsSelectable | Qt::ItemIsEnabled | Qt::ItemIsEditable;
}

QList<Client> &ClientListModel::getList() {
    return this->client_list;
}

void ClientListModel::setList(QList<Client> &&client_list) {
    this->client_list = client_list;

    emit dataChanged(createIndex(0, 0), createIndex(client_list.size() - 1, 0));
}

Client &ClientListModel::getElement(int index) {
    return this->client_list[index];
}
