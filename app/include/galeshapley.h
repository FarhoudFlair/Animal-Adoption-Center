#ifndef GALESHAPLEY_H
#define GALESHAPLEY_H

#include <QList>
#include <QString>
#include <QDebug>

#include "acmalgorithmmatch.h"

template<typename M, typename W>
class GaleShapley
{
public:
    GaleShapley(QList<M> &men, QList<QList<int>> &men_prefs, QList<W> &women, QList<QList<int>> &women_prefs);
    void launch();
    QList<ACMAlgorithmMatch<M, W>> fetch_matches();

private:
    QList<M> &men;
    QList<QList<int>> &men_prefs;
    QList<W> &women;
    QList<QList<int>> &women_prefs;

    QList<ACMAlgorithmMatch<M, W>> matches;
    QList<int> next_proposals;

    QList<QList<QString>> men_prefs_summary;
    QList<QList<QString>> women_prefs_summary;

private:

};

template<typename M, typename W>
GaleShapley<M, W>::GaleShapley(QList<M> &men, QList<QList<int>> &men_prefs, QList<W> &women, QList<QList<int>> &women_prefs) : men(men), men_prefs(men_prefs), women(women), women_prefs(women_prefs)
{
    assert(men.size() == women.size());
    for (auto &el: men_prefs) assert(el.size() == women.size());
    for (auto &el: women_prefs) assert(el.size() == men.size());

    for (int i = 0; i < men.size(); ++i) next_proposals.push_back(0);
    for (auto &el: women_prefs) {
        women_prefs_summary.push_back(QList<QString>());
        for (int i = 0; i < el.size(); ++i)
            women_prefs_summary.last().push_back("");
    }
    for (auto &el: men_prefs) {
        men_prefs_summary.push_back(QList<QString>());
        for (int i = 0; i < el.size(); ++i)
            men_prefs_summary.last().push_back("");
    }
}

template<typename M, typename W>
int find_free_man(const QList<ACMAlgorithmMatch<M, W>> &matches, const QList<M> &men) {
    for (int i = 0; i < men.size(); ++i) {
        for (auto &match : matches) {
            if (match.getMan() == men[i])
                goto found;
        }
        return i;

        found:
        continue;
    }
    return -1;
}

template<typename M, typename W>
int woman_paired_index(const QList<ACMAlgorithmMatch<M, W>> &matches, const W &woman) {
    for (int i = 0; i < matches.size(); ++i) {
        if (matches[i].getWoman() == woman)
            return i;
    }

    return -1;
}

template<typename T>
int simple_indexof(const QList<T> &arr, const T &el) {
    for (int i = 0; i < arr.size(); ++i) {
        if (arr[i] == el)
            return i;
    }
    return -1;
}

template<typename M, typename W>
void GaleShapley<M, W>::launch()
{
    int cur_man = -1;
    while ((cur_man = find_free_man(matches, men)) != -1) {
        int next_proposal_for_cur_man = next_proposals[cur_man];

        assert(next_proposal_for_cur_man >= 0);
        assert(next_proposal_for_cur_man < women.size());

        int next_proposal_ind = men_prefs[cur_man][next_proposal_for_cur_man];
        W &to_propose = women[next_proposal_ind];
        int woman_pair_ind = woman_paired_index(matches, to_propose);

        if (woman_pair_ind < 0) {
            matches.push_back(ACMAlgorithmMatch<M, W>(men[cur_man], to_propose));
        } else {
            QList<int> &to_propose_prefs = women_prefs[next_proposal_ind];
            int engaged_ind = simple_indexof(men, matches[woman_pair_ind].getMan());
            int engaged_rank = simple_indexof(to_propose_prefs, engaged_ind);
            int proposed_rank = simple_indexof(to_propose_prefs, cur_man);

            assert(engaged_rank != -1);
            assert(proposed_rank != -1);

            if (proposed_rank < engaged_rank) {
                men_prefs_summary[simple_indexof(men, matches[woman_pair_ind].getMan())][simple_indexof(women, to_propose)] = "run over";
                men_prefs_summary[cur_man][next_proposal_for_cur_man] = "<-";

                matches[woman_pair_ind].setMan(men[cur_man]);

//                women_prefs_summary[next_proposal_ind][engaged_rank] = "something";
//                women_prefs_summary[next_proposal_ind][proposed_rank] = "<-";

            }
        }

        next_proposals[cur_man] += 1;
    }
}

template<typename M, typename W>
QList<ACMAlgorithmMatch<M, W>> GaleShapley<M, W>::fetch_matches()
{
//    for (int i = 0; i < women.size(); ++i) {
//        qDebug() << women[i].getName();
//        for (int j = 0; j < women_prefs[i].size(); ++j) {
//            qDebug() << j+1 << ". " << men[women_prefs[i][j]].getName() << " " << women_prefs_summary[i][j];
//        }
//        qDebug() << "---------";
//    }
//    for (int i = 0; i < men.size(); ++i) {
//        qDebug() << men[i].getName();
//        for (int j = 0; j < men_prefs[i].size(); ++j) {
//            qDebug() << j+1 << ". " << women[men_prefs[i][j]].getName() << " " << men_prefs_summary[i][j];
//        }
//        qDebug() << "---------";
//    }
    for (auto &el: matches) {
        int man_ind = simple_indexof(men, el.getMan());
        int woman_ind = simple_indexof(women, el.getWoman());
        QString details;

        details += QString("Client %1 (%2)\n").arg(el.getWoman().getName()).arg(el.getWoman().getEmail());
        details += QString("Animal %1 (%2)\n").arg(el.getMan().getName()).arg(el.getMan().getTypeString());

        for (int i = 0; i < men_prefs_summary[man_ind].size(); ++i)
            details += QString("%1. %2 %3\n").arg(i+1).arg(men[men_prefs[man_ind][i]].getName()).arg(men_prefs_summary[man_ind][i]);

        for (int i = 0; i < women_prefs_summary[woman_ind].size(); ++i)
            details += QString("%1. %2 %3\n").arg(i+1).arg(women[women_prefs[woman_ind][i]].getName()).arg(women_prefs_summary[woman_ind][i]);

        el.setDetails(details);
    }

    return matches;
}

#endif // GALESHAPLEY_H
