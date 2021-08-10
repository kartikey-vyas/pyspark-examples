#!/bin/bash
# Script to pull, spin up pyspark docker container and mount the current directory
# Author: Kartikey Vyas

# Check if image has been pulled already
if [ -n "$(docker image inspect jupyter/pyspark-notebook:latest)" ];
then 
    echo "jupyter/pyspark image found"
else
    echo "jupyter/pyspark image not found -- pulling from docker hub"
    docker pull jupyter/pyspark-notebook
fi


docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/pyspark-notebook
