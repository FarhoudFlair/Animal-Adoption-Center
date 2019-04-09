#ifndef ALGORITHMLISTMODEL_H
#define ALGORITHMLISTMODEL_H

#include <QAbstractListModel>

#include <utility>

#include "include/animal.h"
#include "include/client.h"
#include "acmalgorithmmatch.h"

class AlgorithmListModel: public QAbstractListModel
{
public:
    AlgorithmListModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex & = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    Qt::ItemFlags flags(const QModelIndex &index) const;

    QList<ACMAlgorithmMatch<Animal, Client>> &getList();
    void setList(QList<ACMAlgorithmMatch<Animal, Client>> &&matches);

    ACMAlgorithmMatch<Animal, Client> &getElement(int index);

private:
    QList<ACMAlgorithmMatch<Animal, Client>> matches;
};

#endif // ALGORITHMLISTMODEL_H
