#ifndef CLIENTLISTMODEL_H
#define CLIENTLISTMODEL_H

#include <QAbstractListModel>

#include "include/client.h"

class ClientListModel: public QAbstractListModel
{
public:
    ClientListModel(QObject *parent = nullptr);

    virtual int rowCount(const QModelIndex &parent = QModelIndex()) const;
    virtual QVariant data(const QModelIndex &index, int = Qt::DisplayRole) const;
    virtual Qt::ItemFlags flags(const QModelIndex &index) const;

    QList<Client> &getList();
    void setList(QList<Client> &&client_list);

    Client &getElement(int index);

private:
    QList<Client> client_list;
};

#endif // CLIENTLISTMODEL
