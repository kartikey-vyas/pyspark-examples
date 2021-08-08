#!/bin/bash
DATASET="CALIFORNIA-HOUSING"
echo "----------- RETRIEVING $DATASET DATA -----------"

# check if data directory exists
if [ -d "${PWD}/data" ]
then
    echo "data directory exists."
    cd data
else
    echo "Error: Directory ${PWD}/data does not exist, creating data folder."
    mkdir data
    cd data
    pwd
fi

# retrieve and unzip houses.zip
if [ -f "${PWD}/cadata.txt" ]
then
    echo "houses.zip already retrieved"
else
    wget http://lib.stat.cmu.edu/datasets/houses.zip
    unzip houses.zip
    rm houses.zip
fi

# retrieve and unzip california housing data set
if [ -f "${PWD}/CaliforniaHousing/cal_housing.data" ] && [ -f "${PWD}/CaliforniaHousing/cal_housing.domain" ]
then
    echo "cal_housing.tgz already retrieved"
else
    wget https://www.dcc.fc.up.pt/~ltorgo/Regression/cal_housing.tgz
    tar -zxvf cal_housing.tgz
    rm cal_housing.tgz
fi

echo "----------- COMPLETE -----------"

