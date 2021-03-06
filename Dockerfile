FROM jupyter/all-spark-notebook

USER root

RUN apt-get update \
 && apt-get install -y build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev libssl-dev \
 && easy_install greenlet \
 && easy_install gevent \
 && pip install scrapy \
 && pip install scrapy_splash
 
 RUN conda install -p /opt/conda/envs/python2 scrapy \
 && conda install -p /opt/conda/envs/python2 scrapy_splash