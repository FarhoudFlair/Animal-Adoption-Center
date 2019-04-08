#-------------------------------------------------
#
# Project created by QtCreator 2019-02-10T13:50:39
#
#-------------------------------------------------

QT     += core gui widgets sql
CONFIG += c++14

TARGET = cuACS
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    src/animal.cpp \
    src/animallistmodel.cpp \
    src/client.cpp \
    src/mainwindow.cpp \
    src/sqlserializer.cpp \
    src/staff.cpp \
    src/user.cpp \
    main.cpp \
    src/clientlistmodel.cpp \
    src/viewanimallistcontrol.cpp \
    src/applicationcontrol.cpp \
    src/viewownprofilecontrol.cpp \
    src/editclientprofilecontrol.cpp \
    src/addanimalcontrol.cpp \
    src/editanimalprofilecontrol.cpp \
    src/viewclientlistcontrol.cpp \
    src/viewclientprofilecontrol.cpp \
    src/addclientcontrol.cpp \
    src/manageanimalscontrol.cpp \
    src/manageclientscontrol.cpp \
    src/launchalgorithmcontrol.cpp \
    src/viewalgorithmsummarycontrol.cpp \
    src/viewmatchdetailscontrol.cpp \
    src/acmalgorithm.cpp \
    src/algorithmlistmodel.cpp

HEADERS += \
    include/animal.h \
    include/animallistmodel.h \
    include/client.h \
    include/mainwindow.h \
    include/sqlserializer.h \
    include/staff.h \
    include/user.h \
    include/clientlistmodel.h \
    include/viewanimallistcontrol.h \
    include/applicationcontrol.h \
    include/addanimalcontrol.h \
    include/addclientcontrol.h \
    include/animal.h \
    include/animallistmodel.h \
    include/applicationcontrol.h \
    include/client.h \
    include/clientlistmodel.h \
    include/editanimalprofilecontrol.h \
    include/editclientprofilecontrol.h \
    include/launchalgorithmcontrol.h \
    include/manageanimalscontrol.h \
    include/manageclientscontrol.h \
    include/sqlserializer.h \
    include/staff.h \
    include/user.h \
    include/viewalgorithmsummarycontrol.h \
    include/viewanimallistcontrol.h \
    include/viewclientlistcontrol.h \
    include/viewclientprofilecontrol.h \
    include/viewmatchdetailscontrol.h \
    include/viewownprofilecontrol.h \
    include/acmalgorithm.h \
    include/algorithmlistmodel.h

FORMS += \
    mainwindow.ui
