FROM cupy/cupy:v13.1.0

RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y vim

ARG DEBIAN_FRONTEND=noninteractive

RUN pip3 install ipython ipykernel --upgrade
RUN pip3 install notebook
RUN pip3 install astropy
RUN pip3 install matplotlib
RUN pip3 install tomlkit
RUN pip3 install poppy --upgrade
RUN pip3 install batoid
RUN pip3 install hcipy --upgrade
RUN pip3 install -U "ray[data,train,tune,serve]"

CMD ["/bin/bash"]