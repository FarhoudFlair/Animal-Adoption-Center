#ifndef ACMALGORITHMMATCH_H
#define ACMALGORITHMMATCH_H

#include <QList>
#include <QDebug>

#include "animal.h"
#include "client.h"

template<typename M, typename W>
class ACMAlgorithmMatch
{
public:
    ACMAlgorithmMatch();
    ACMAlgorithmMatch(M, W);
    ACMAlgorithmMatch(W, M);

    M &getMan();
    const M &getMan() const;
    void setMan(M);

    W &getWoman();
    const W &getWoman() const;
    void setWoman(W);

    void setDetails(QString details);
    const QString &getDetails() const;

private:
    M man;
    W woman;

    QString details;
};

template<typename M, typename W>
ACMAlgorithmMatch<M, W>::ACMAlgorithmMatch(M man, W woman): man(man), woman(woman)
{}

template<typename M, typename W>
ACMAlgorithmMatch<M, W>::ACMAlgorithmMatch(W woman, M man): man(man), woman(woman)
{}

template<typename M, typename W>
M &ACMAlgorithmMatch<M, W>::getMan() {
    return man;
}

template<typename M, typename W>
const M &ACMAlgorithmMatch<M, W>::getMan() const {
    return man;
}

template<typename M, typename W>
void ACMAlgorithmMatch<M, W>::setMan(M man) {
    this->man = man;
}

template<typename M, typename W>
W &ACMAlgorithmMatch<M, W>::getWoman() {
    return woman;
}

template<typename M, typename W>
const W &ACMAlgorithmMatch<M, W>::getWoman() const {
    return woman;
}

template<typename M, typename W>
void ACMAlgorithmMatch<M, W>::setWoman(W woman) {
    this->woman = woman;
}

template<typename M, typename W>
void ACMAlgorithmMatch<M, W>::setDetails(QString details) {
    this->details = details;
}

template<typename M, typename W>
const QString &ACMAlgorithmMatch<M, W>::getDetails() const {
    return details;
}

#endif // ACMALGORITHMMATCH_H
