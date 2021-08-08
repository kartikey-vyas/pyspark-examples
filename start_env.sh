#!/bin/bash

# Script to spin up pyspark docker container and mount current directory

docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/pyspark-notebook
