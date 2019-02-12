#include "mainwindow.h"

#include <exception>
#include <QDebug>
#include <QApplication>

#include "sqlserializer.h"

int main(int argc, char *argv[])
{
    try {
        SQLSerializer::init();

        QApplication a(argc, argv);
        MainWindow w;
        w.show();

        return a.exec();
    } catch (std::exception e) {
        qWarning() << e.what() << endl;
    } catch (QString e) {
        qWarning() << e << endl;
    }
}
