#!/bin/bash

mkdir -p ./build/mac

sqlite3 ./build/mac/cuACS.db ".read ./db_reset_seed.sql"

cd ./build/mac

/usr/local/opt/qt/bin/qmake -spec macx-clang ../../app/cuACS.pro CONFIG+=debug CONFIG+=x86_64 CONFIG+=qml_debug
make -j4 all
