#include "include/launchalgorithmcontrol.h"

void LaunchAlgorithmControl::launch(QList<Animal> &animals, QList<Client> &clients, Ui::MainWindow *ui) {
    ACMAlgorithm algo;
    QList<ACMAlgorithmMatch<Animal, Client>> matches = algo.launch(animals, clients);

    AlgorithmListModel *model = new AlgorithmListModel(ui->algorithmSummaryListView);
    model->setList(std::move(matches));
    ui->algorithmSummaryListView->setModel(model);

//    for (auto &el: matches)
//        qDebug() << el.getWoman().getName() << " " << el.getMan().getName();
}
