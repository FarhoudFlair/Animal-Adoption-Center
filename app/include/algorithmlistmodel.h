#ifndef ALGORITHMLISTMODEL_H
#define ALGORITHMLISTMODEL_H

#include <QAbstractListModel>

#include <utility>

#include "include/animal.h"
#include "include/client.h"

class AlgorithmListModel: public QAbstractListModel
{
public:
    AlgorithmListModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex & = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    Qt::ItemFlags flags(const QModelIndex &index) const;

    QList<std::pair<Animal, Client>> &getList();
    void setList(QList<std::pair<Animal, Client>> &&matches);

    std::pair<Animal, Client> &getElement(int index);

private:
    QList<std::pair<Animal, Client>> matches;
};

#endif // ALGORITHMLISTMODEL_H
