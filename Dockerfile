FROM ermaker/keras

RUN conda install -y \
    jupyter \
    matplotlib \
    seaborn

VOLUME /notebook
WORKDIR /notebook
EXPOSE 8888
CMD jupyter notebook --no-browser --allow-root --ip=0.0.0.0 --NotebookApp.token=
