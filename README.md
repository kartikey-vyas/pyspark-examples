# pyspark-examples
Learning PySpark through various examples and tutorials.

## Requirements
The code in this repo is designed to run in an environment with PySpark and it's necessary dependencies installed. I achieve this through using a [docker container managed by Jupyter](https://github.com/jupyter/docker-stacks). For instructions on how to install docker on your system, see [here.](https://docs.docker.com/get-docker/)

## Set up
First, pull the PySpark docker image.

```bash
docker pull jupyter/pyspark-notebook
```

Next, to run JupyterLab in the PySpark container, run the following command.

```bash
docker run --rm -p 10000:8888 -e JUPYTER_ENABLE_LAB=yes -v "${PWD}":/home/jovyan/work jupyter/pyspark-notebook
```

This will spin up the docker container and deploy a Jupyter server on port 10000, which can be accessed by visiting `http://<hostname>:10000/lab?token=<token>` in a browser. Logs will be printed in the terminal from which the above command is executed. For convenience, this command can be run by running the script `start_env.sh`