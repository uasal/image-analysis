## Base image for analysis

### Contents
The image is build on the official [CuPy image](https://hub.docker.com/r/cupy/cupy/), which comes with Python 3.10.12, numpy 1.26.4, scipy 1.13.0. Additionally, the following repos & packages are installed:
- git
- astropy
- matplotlib
- tomlkit
- jupyter
- https://github.com/spacetelescope/poppy
- https://github.com/jmeyers314/batoid
- https://docs.hcipy.org/0.4.0/
- https://docs.ray.io/en/latest/ray-overview/installation.html#installation

### How to build image
Can be built for multiple architectures with `buildx`. Add a version number tag and, if it's backwards compatible, the `latest` tag as well. For example:
```
docker buildx build --platform linux/amd64,linux/arm64 --push -t pearlhub/analysis:vx -t pearlhub/analysis:latest .
```

### How to open a container in VSCode:
- open the Command Palette (Shift+Cmd+P in Mac or Shift+Ctrl+P in Windows)
- type 'Dev Containers: Reopen in Container'
- wait (it could take a few minutes)

### How to run image on gpus
```
docker run --gpus all -it cupy/cupy
```