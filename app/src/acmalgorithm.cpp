#include "include/acmalgorithm.h"

using namespace std;

double dist (Client &client, Animal &animal) noexcept {
    double dist = 0;
    for (int i = 0; i < 14; ++i) {
        double x = client.getPreferredAnimal().getNPA(i) - animal.getNPA(i);
        dist += x*x;
    }
    return sqrt(dist);
}

template<typename T>
QList<int> sorted_indexes(const QList<T> &arr) {
    QList<pair<int, T>> zipped;
    QList<int> ret;

    for (int i = 0; i < arr.size(); ++i) {
        zipped.push_back(pair<int, T>(i, arr[i]));
    }

    sort(zipped.begin(), zipped.end(), [](auto a, auto b) {
        return a.second < b.second;
    });

    for (auto &el : zipped) {
        ret.push_back(el.first);
    }

    return ret;
}

template <typename T>
QList<T> sort_by_indexes(QList<T> &arr, const QList<int> &ind) {
    assert(arr.size() == ind.size());

    QList<pair<int, T>> zipped;
    QList<T> ret;

    for (int i = 0; i < arr.size; ++i) {
        zipped.push_back(pair<int, T>(i, arr[i]));
    }

    sort(zipped.begin(), zipped.end(), [&](auto a, auto b) {
        return ind[a.first] < ind[b.first];
    });

    for (auto &el : zipped) {
        ret.push_back(el.second);
    }

    return ret;
}

template<typename M, typename W>
int find_free_man(const QList<pair<M, W>> &pairs, const QList<M> &men) {
    for (int i = 0; i < men.size(); ++i) {
        for (auto &pair : pairs) {
            if (men[i] == pair.first)
                goto found;
        }
        return i;

        found:
        continue;
    }
    return -1;
}

template<typename M, typename W>
int woman_paired_index(const QList<pair<M, W>> &pairs, const W &woman) {
    for (int i = 0; i < pairs.size(); ++i) {
        if (pairs[i].second == woman)
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
QList<pair<M, W>> gale_shapley(QList<M> &men, QList<QList<int>> &men_prefs, QList<W> &women, QList<QList<int>> &women_prefs, QList<QString> *explanation)
{
    ((void)explanation); // TODO: make use of explanation

    assert(men.size() == women.size());
    for (auto &el: men_prefs) assert(el.size() == women.size());
    for (auto &el: women_prefs) assert(el.size() == men.size());

    QList<pair<M, W>> pairs;
    QList<int> next_proposals;
    for (int i = 0; i < men.size(); ++i) next_proposals.push_back(0);

    int cur_man = -1;
    while ((cur_man = find_free_man(pairs, men)) != -1) {
        int next_proposal_for_cur_man = next_proposals[cur_man];

        assert(next_proposal_for_cur_man >= 0);
        assert(next_proposal_for_cur_man < women.size());

        int next_proposal_ind = men_prefs[cur_man][next_proposal_for_cur_man];
        W &to_propose = women[next_proposal_ind];
        int woman_pair_ind = woman_paired_index(pairs, to_propose);

        if (woman_pair_ind < 0) {
            pairs.push_back(pair<M, W>(men[cur_man], to_propose));
        } else {
            QList<int> &to_propose_prefs = women_prefs[next_proposal_ind];
            int engaged_ind = simple_indexof(men, pairs[woman_pair_ind].first);
            int engaged_rank = simple_indexof(to_propose_prefs, engaged_ind);
            int proposed_rank = simple_indexof(to_propose_prefs, cur_man);

            assert(engaged_rank != -1);
            assert(proposed_rank != -1);

            if (proposed_rank < engaged_rank) {
                pairs[woman_pair_ind].first = men[cur_man];
            }
        }

        next_proposals[cur_man] += 1;
    }

    return pairs;
}

Client create_dummy_client() {
    static int LAST_ID = -1;
    Client c;
    c.setId(LAST_ID--);
    c.setName(QString("Dummy Client %1").arg(c.getId()));
    return c;
}

Animal create_dummy_animal() {
    static int LAST_ID = -1;
    Animal a;
    a.setId(LAST_ID--);
    a.setName(QString("Dummy Animal %1").arg(a.getId()));
    return a;
}

void equalize_lists_with_dummies(QList<Animal> &animals, QList<QList<int>> &animal_prefs, QList<Client> &clients, QList<QList<int>> &client_prefs) {
    if (animals.size() > clients.size()) {
        int diff = animals.size() - clients.size();
        for (int i = 0; i < diff; i++) {
            int c_id = clients.size();
            clients.push_back(create_dummy_client());
            client_prefs.push_back(QList<int>());

            for (auto &el : animal_prefs) el.push_back(c_id);
            for (int j = 0; j < animals.size(); ++j) client_prefs.last().push_back(j);
        }
    } else {
        int diff = clients.size() - animals.size();
        for (int i = 0; i < diff; i++) {
            int a_id = clients.size();
            animals.push_back(create_dummy_animal());
            animal_prefs.push_back(QList<int>());

            for (auto &el : client_prefs) el.push_back(a_id);
            for (int j = 0; j < clients.size(); ++j) animal_prefs.last().push_back(j);
        }
    }
}

void remove_dummies_from_results(QList<std::pair<Animal, Client>> &matches) {
    for (int i = 0; i < matches.size(); ++i) {
        if (matches[i].first.getId() < 0 || matches[i].second.getId() < 0) {
            matches.removeAt(i);
            i -= 1;
        }
    }
}

QList<int> rank_clients_by_dist(Animal &animal, QList<Client> &clients) {
    QList<double> dists;
    for (auto &el: clients) dists.push_back(dist(el, animal));
    return sorted_indexes(dists);
}

QList<int> rank_animals_by_dist(Client &client, QList<Animal> &animals) {
    QList<double> dists;
    for (auto &el: animals) dists.push_back(dist(client, el));
    return sorted_indexes(dists);
}

QList<std::pair<Animal, Client>> ACMAlgorithm::launch(QList<Animal> &animals, QList<Client> &clients) {
    QList<QList<int>> animal_prefs;
    for (auto &el: animals) animal_prefs.push_back(rank_clients_by_dist(el, clients));
    QList<QList<int>> client_prefs;
    for (auto &el: clients) client_prefs.push_back(rank_animals_by_dist(el, animals));

    equalize_lists_with_dummies(animals, animal_prefs, clients, client_prefs);

    auto matches = gale_shapley(animals, animal_prefs, clients, client_prefs, nullptr);

    remove_dummies_from_results(matches);

    return matches;
}
