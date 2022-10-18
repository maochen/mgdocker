# USING 10.1 is for Tensorflow exclusively as PyTorch has its own cuda cooked inside.
FROM nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04

RUN apt-get install -y --no-install-recommends software-properties-common
RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get install -y --no-install-recommends python3.8

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
RUN apt-get install -y --no-install-recommends python3.8-dev python3-pip
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN python -m pip install --no-cache-dir --upgrade pip

RUN apt-get install -y --no-install-recommends \
        curl \
        git \
        screen \
        vim \
        unzip \
        zip

RUN apt-get autoclean

RUN python -m pip install --no-cache-dir -U setuptools
RUN python -m pip install --no-cache-dir ipython tqdm matplotlib numpy jupyter scikit-plot==0.3.7
RUN python -m pip install --no-cache-dir tensorflow
RUN python -m pip install --no-cache-dir torch torchvision torchtext tensorboardX transformers


ENV JUPYTER_DIR="/home"
ENTRYPOINT ["sh","-c","jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='test' --NotebookApp.password='' --notebook-dir=${JUPYTER_DIR}"]

