FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        software-properties-common \
        python3-pip \
        git \
 && add-apt-repository -y ppa:deadsnakes/ppa \
 && apt-get update \
 && apt-get install -y python3.7 python3.7-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3.7 /usr/bin/python

# pip has to be installed before setuptools, setuptools has to be installed before tensorflow
RUN python -m pip install --no-cache-dir -U pip
RUN python -m pip install --no-cache-dir -U setuptools
# also useful
RUN python -m pip install --no-cache-dir ipython requests numpy pandas quandl jupyter
RUN python -m pip install --no-cache-dir tensorflow-gpu==1.14.0
RUN python -m pip install --no-cache-dir git+https://www.github.com/keras-team/keras-contrib.git

ENV JUPYTER_DIR="/home"
ENTRYPOINT ["sh","-c","jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='test' --NotebookApp.password='' --notebook-dir=${JUPYTER_DIR}"]