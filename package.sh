#!/bin/bash

tar -c --exclude ./**/.DS_Store \
    --exclude ./**/build \
    -f ./comp_3004_deliverable2.tar ./app \
    ./build_linux.sh ./run_linux.sh \
    ./db_reset_seed.sql ./README.txt
