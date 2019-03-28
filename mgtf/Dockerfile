FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

COPY setup.py /etc/

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
        build-essential \
        curl \
        software-properties-common \
        python3-pip \
        git \
 && add-apt-repository -y ppa:jonathonf/python-3.6 \
 && apt-get update \
 && apt-get install -y python3.6 python3.6-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# pip has to be installed before setuptools, setuptools has to be installed before tensorflow
RUN python3.6 -m pip install --no-cache-dir -U pip
RUN python3.6 -m pip install --no-cache-dir -U setuptools
# also useful
RUN python3.6 -m pip install --no-cache-dir ipython requests numpy pandas quandl
RUN python3.6 -m pip install --no-cache-dir tensorflow-gpu==1.13.1
RUN python3.6 -m pip install --no-cache-dir git+https://www.github.com/keras-team/keras-contrib.git
RUN ln -s /usr/bin/python3.6 /usr/bin/python

WORKDIR /etc/
RUN python setup.py install
RUN rm -rf setup.py

CMD ["ipython"]