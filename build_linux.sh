#!/bin/bash

sqlite3 ./app/cuACS.db ".read ./db_reset_seed.sql"

mkdir -p ./build

cd ./build

cp ../app/cuACS.db ./
qmake -spec linux-g++ ../app/cuACS.pro CONFIG+=debug CONFIG+=x86_64
make all
