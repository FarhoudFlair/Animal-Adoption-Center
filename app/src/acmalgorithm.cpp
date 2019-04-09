#include "include/acmalgorithm.h"

template<typename T>
QList<std::pair<int, T>> enumerate(const QList<T> &arr) {
    QList<std::pair<int, T>> zipped;
    for (int i = 0; i < arr.size(); ++i) {
        zipped.push_back(std::pair<int, T>(i, arr[i]));
    }
    return zipped;
}

template<typename T>
QList<int> sorted_indexes(const QList<T> &arr) {
    QList<std::pair<int, T>> zipped = enumerate(arr);
    QList<int> ret;

    std::sort(zipped.begin(), zipped.end(), [](auto a, auto b) {
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

    QList<std::pair<int, T>> zipped = enumerate(arr);
    QList<T> ret;

    std::sort(zipped.begin(), zipped.end(), [&](auto a, auto b) {
        return ind[a.first] < ind[b.first];
    });

    for (auto &el : zipped) {
        ret.push_back(el.second);
    }

    return ret;
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

void remove_dummies_from_results(QList<ACMAlgorithmMatch<Animal, Client>> &matches) {
    for (int i = 0; i < matches.size(); ++i) {
        if (matches[i].getMan().getId() < 0 || matches[i].getWoman().getId() < 0) {
            matches.removeAt(i);
            i -= 1;
        }
    }
}

void reorder_prefs_for_cost(QList<Animal> &animals, QList<Client> &clients, QList<QList<int>> &client_prefs)
{
    QList<std::pair<int, Animal>> animals_zipped = enumerate(animals);
    for (int i = 0; i < clients.size(); ++i) {
        std::stable_sort(client_prefs[i].begin(), client_prefs[i].end(), [&](auto a, auto b) {
            bool ag = animals[a].getNPA(14) < clients[i].getIncome();
            bool bg = animals[b].getNPA(14) < clients[i].getIncome();
            return ag != bg || (static_cast<int>(ag) < static_cast<int>(bg));
        });
    }
}

void break_matches_for_cost(QList<ACMAlgorithmMatch<Animal, Client>> &matches) {
    for (int i = 0; i < matches.size(); ++i) {
        if (matches[i].getMan().getNPA(14) > matches[i].getWoman().getIncome()) {
            matches.removeAt(i);
            i -= 1;
        }
    }
}

void reorder_prefs_for_type(QList<Animal> &animals, QList<Client> &clients, QList<QList<int>> &client_prefs)
{
    QList<std::pair<int, Animal>> animals_zipped = enumerate(animals);
    for (int i = 0; i < clients.size(); ++i) {
        std::stable_sort(client_prefs[i].begin(), client_prefs[i].end(), [&](auto a, auto b) {
            bool ag = animals[a].getType() == clients[i].getPreferredAnimal().getType();
            bool bg = animals[b].getType() == clients[i].getPreferredAnimal().getType();
            return ag != bg || (static_cast<int>(ag) < static_cast<int>(bg));
        });
    }
}

void reorder_prefs_for_breed(QList<Animal> &animals, QList<Client> &clients, QList<QList<int>> &client_prefs)
{
    QList<std::pair<int, Animal>> animals_zipped = enumerate(animals);
    for (int i = 0; i < clients.size(); ++i) {
        std::stable_sort(client_prefs[i].begin(), client_prefs[i].end(), [&](auto a, auto b) {
            bool ag = animals[a].getBreed() == clients[i].getPreferredAnimal().getBreed();
            bool bg = animals[b].getBreed() == clients[i].getPreferredAnimal().getBreed();
            return ag != bg || (static_cast<int>(ag) < static_cast<int>(bg));
        });
    }
}

void break_matches_for_type(QList<ACMAlgorithmMatch<Animal, Client>> &matches) {
    for (int i = 0; i < matches.size(); ++i) {
        if (matches[i].getMan().getType() != matches[i].getWoman().getPreferredAnimal().getType()) {
            matches.removeAt(i);
            i -= 1;
        }
    }
}

double dist(QList<double> &a, QList<double> &b) {
    double dist = 0;
    for (int i = 0; i < a.size(); ++i) {
        double x = a[i] - b[i];
        dist += x*x;
    }
    return sqrt(dist);
}

template<typename T, typename U>
QList<int> rank(T &single, QList<U> &arr, std::function<double(T&, U&)> dist) {
    QList<double> dists;
    for (auto &el: arr) dists.push_back(dist(single, el));
    return sorted_indexes(dists);
}

template<typename M, typename W>
std::pair<QList<QList<int>>, QList<QList<int>>> rankings(QList<M> &men, QList<W> &women, std::function<double(M&, W&)> dist)
{
    QList<QList<int>> men_prefs;
    for (auto &el: men) men_prefs.push_back(rank(el, women, dist));

    std::function<double(W&, M&)> op_dist = [&](auto &a, auto &b) { return dist(b, a); };
    QList<QList<int>> women_prefs;
    for (auto &el: women) women_prefs.push_back(rank(el, men, op_dist));

    return std::pair<QList<QList<int>>, QList<QList<int>>>(men_prefs, women_prefs);
}

double dist_npa(Animal &animal, Client &client) {
    QList<double> cnpa;
    for (int i = 0; i < 14; i++) cnpa.push_back(client.getPreferredAnimal().getNPA(i));
    QList<double> anpa;
    for (int i = 0; i < 14; i++) anpa.push_back(animal.getNPA(i));
    return dist(cnpa, anpa);
}

double dist_pa(Animal &a, Client &c, QList<double> &maxes) {
    Animal ca = c.getPreferredAnimal();
    QList<double> cpa({ca.getAge(), ca.getHeight(), ca.getWeight(), ca.getHealth()});
    QList<double> apa({a.getAge(), a.getHeight(), a.getWeight(), a.getHealth()});
    for (int i = 0; i < maxes.size(); ++i) {
        cpa[i] /= maxes[i];
        apa[i] /= maxes[i];
    }
    return dist(cpa, apa);
}

QList<std::function<double(Animal&, Client&)>> nonphysical_attr_funs() {
    return QList<std::function<double(Animal&, Client&)>>({
        [](auto a, auto c) {
            return std::abs(a.getNPA(0) - (1/2)*(c.getPatience() + c.getExperience()));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(1) - (1/4)*(c.getPatience() + c.getExperience() + c.getActiveness() + (5/118)*(118-c.getAge())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(2) - (1/4)*(c.getPatience() + c.getExperience() + c.getActiveness() + (5/118)*(100-c.getAge())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(3) - (1/3)*(c.getPatience() + c.getExperience() + (5/118)*(100-c.getAge())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(4) - (1/3)*((4-c.getPatience()) + (4-c.getExperience()) + (4-c.getActiveness())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(5) - (1/1)*((5/500000)*(500000-c.getIncome())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(6) - (1/1)*(c.getActiveness()));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(7) - (1/2)*(c.getActiveness() + c.getExperience()));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(8) - (1/2)*(c.getPatience() + (5/118)*(118-c.getAge())));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(9) - (1/1)*(4-c.getPatience()));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(10) - (1/1)*(c.getRegularity()));
        },
        [](auto a, auto c) {
            return std::abs(a.getNPA(13) - (1/1)*(c.getExperience()));
        },
    });
}

std::pair<QList<QList<int>>, QList<QList<int>>> average_rankings(QList<std::pair<QList<QList<int>>, QList<QList<int>>>> rankings)
{
    assert(rankings.size() > 0);

    std::pair<QList<QList<int>>, QList<QList<int>>> ret;
    std::pair<QList<QList<double>>, QList<QList<double>>> average;

    for (auto &el: rankings.first().first) {
        average.first.push_back(QList<double>());
        for (int i = 0; i < el.size(); ++i)
            average.first.last().push_back(0);
    }
    for (auto &el: rankings.first().second) {
        average.second.push_back(QList<double>());
        for (int i = 0; i < el.size(); ++i)
            average.second.last().push_back(0);
    }

    for (auto &el: rankings) {
        for (int i = 0; i < el.first.size(); ++i) {
            for (int j = 0; j < el.first[i].size(); ++j) {
                int pos = simple_indexof(el.first[i], j);

                assert(pos >= 0);
                
                average.first[i][j] += pos;
            }
        }
        for (int i = 0; i < el.second.size(); ++i) {
            for (int j = 0; j < el.second[i].size(); ++j) {
                int pos = simple_indexof(el.second[i], j);

                assert(pos >= 0);
                
                average.second[i][j] += pos;
            }
        }
    }

    for (int i = 0; i < average.first.size(); ++i) {
        ret.first.push_back(sorted_indexes(average.first[i]));
    }
    for (int i = 0; i < average.second.size(); ++i) {
        ret.second.push_back(sorted_indexes(average.second[i]));
    }

    return ret;
}

QList<ACMAlgorithmMatch<Animal, Client>> ACMAlgorithm::launch(QList<Animal> &animals, QList<Client> &clients) {
    std::function<double(Animal &, Client &)> dnpa = dist_npa;
    std::function<double(Animal &, Client &)> dpa = [](auto a, auto b) {
        auto m = QList<double>({100, 500, 500, 4});
        return dist_pa(a, b, m);
    };

    QList<std::pair<QList<QList<int>>, QList<QList<int>>>> rankings_list;
    auto fourteendim = rankings(animals, clients, dnpa);
    for (int i = 0; i < 13; ++i)
        rankings_list.push_back(fourteendim);
    rankings_list.push_back(rankings(animals, clients, dpa));
    auto dist_funs = nonphysical_attr_funs();
    for (auto & fun: dist_funs)
        rankings_list.push_back(rankings(animals, clients, fun));

    std::pair<QList<QList<int>>, QList<QList<int>>> prefs = average_rankings(rankings_list);

    reorder_prefs_for_breed(animals, clients, prefs.second);
    reorder_prefs_for_cost(animals, clients, prefs.second);
    reorder_prefs_for_type(animals, clients, prefs.second);
    equalize_lists_with_dummies(animals, prefs.first, clients, prefs.second);

    GaleShapley<Animal, Client> gs(animals, prefs.first, clients, prefs.second);
    gs.launch();
    QList<ACMAlgorithmMatch<Animal, Client>> matches = gs.fetch_matches();

    remove_dummies_from_results(matches);
    break_matches_for_cost(matches);
    break_matches_for_type(matches);

    return matches;
}
