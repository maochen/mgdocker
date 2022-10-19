FROM nvidia/cuda:11.6.0-cudnn8-runtime-ubuntu20.04

RUN apt-get update
# RUN apt-get install -y --no-install-recommends software-properties-common
RUN apt-get install -y --no-install-recommends python3 python3-dev python3-pip
# RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN ln -s /usr/bin/python3 /usr/bin/python
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
RUN python -m pip install --no-cache-dir ipython tqdm matplotlib numpy jupyter transformers
RUN python -m pip install --no-cache-dir torch torchvision torchtext --extra-index-url https://download.pytorch.org/whl/cu116


ENV JUPYTER_DIR="/home"
ENTRYPOINT ["sh","-c","jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='test' --NotebookApp.password='' --notebook-dir=${JUPYTER_DIR}"]
