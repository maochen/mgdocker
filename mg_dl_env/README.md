# MG DeepLearning GPU Image
- CUDA with CUDNN included
- Python 3.8.10
- Numpy
- Pytorch
- Jupyter Book

# Repository Details
## Run command
| Application | Port |
| ----------- | -----------|
| Jupyter | 8888 |
| tensorboard | 6006 |

`docker run --gpus all --platform linux/amd64 --shm-size 64G -v /<HOST_DIR>/:/home -dt --name 'mg-dl' -p 2000:8888 -p 6006:6006 castorgmc/mg-dl-env`

## Jupyter Token
By default, token is `test`

# Useful Commands
`docker system prune -f` \
`docker exec -it fuseki /bin/bash` \
`docker buildx build --platform linux/amd64 -t test .` \
`az acr repository list --name mgdockerhub --output table`
