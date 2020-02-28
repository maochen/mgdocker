FROM nvidia/cuda:10.1-runtime-ubuntu18.04

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        python3-dev \
        libpython3.7-dev \
        build-essential \
        curl \
        software-properties-common \
        git \
        zip \
	unzip \
	screen \
        vim

RUN apt-get install -y python3.7 python3-pip \
 && apt-get clean

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 2

RUN ln -s /usr/bin/python3.7 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip

# pip has to be installed before setuptools, setuptools has to be installed before tensorflow
RUN python -m pip install --no-cache-dir -U pip
RUN python -m pip install --no-cache-dir -U setuptools
# also useful
RUN python -m pip install --no-cache-dir ipython tqdm matplotlib numpy jupyter scikit-plot==0.3.7
RUN python -m pip install --no-cache-dir --pre "tensorflow==1.15.*"
RUN python -m pip install --no-cache-dir torch torchvision torchtext tensorboardX transformers


ENV JUPYTER_DIR="/home"
ENTRYPOINT ["sh","-c","jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='test' --NotebookApp.password='' --notebook-dir=${JUPYTER_DIR}"]