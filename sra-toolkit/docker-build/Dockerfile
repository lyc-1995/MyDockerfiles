FROM lyc1995/ubuntu:20.04.2
ARG VERSION=2.11.1

ENV DEBIAN_FRONTEND=noninteractive 

ADD sratoolkit.${VERSION}-ubuntu64.tar.gz $HOME

ENV PATH=$PATH:$HOME/sratoolkit.${VERSION}-ubuntu64/bin
