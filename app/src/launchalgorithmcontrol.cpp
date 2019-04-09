#include "include/launchalgorithmcontrol.h"

void LaunchAlgorithmControl::launch(Ui::MainWindow *ui) {
    auto animals = SQLSerializer::readAnimals();
    auto clients = SQLSerializer::readClients();
    ACMAlgorithm algo;
    QList<ACMAlgorithmMatch<Animal, Client>> matches = algo.launch(animals, clients);

    AlgorithmListModel *model = new AlgorithmListModel(ui->algorithmSummaryListView);
    model->setList(std::move(matches));
    ui->algorithmSummaryListView->setModel(model);
}
