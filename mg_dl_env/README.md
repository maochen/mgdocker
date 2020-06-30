# MG DeepLearning GPU Image
- CUDA 10.2 with CUDNN included
- Python 3.8.3
- Numpy
- Tensorflow 2.0
- Pytorch
- Jupyter Book

# Repository Details
## Run command
| Application | Port |
| ----------- | -----------|
| Jupyter | 8888 |
| tensorboard | 6006 |

`docker run --gpus all --shm-size 64G -v /<YOUR_SRC_DATA_FOLDER>/:/<DEST_FOLDER> -e JUPYTER_DIR='/DEST_FOLDER' -dt --name 'mg-dl' -p 2000:8888 -p 6006:6006 castorgmc/mg-dl-env`

## Jupyter Token
By default, token is `test`

# Useful Commands
`docker system prune -f` \
`docker exec -it fuseki /bin/bash` \
`docker build -t test .` \
`az acr repository list --name mgdockerhub --output table`


