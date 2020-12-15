FROM lyc1995/ubuntu:20.04.1

USER root

ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

RUN apt-get update --fix-missing \
	&& apt-get install -y --no-install-recommends curl grep sed dpkg wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 git mercurial subversion \
	&& apt-get install -y --no-install-recommends make cmake gfortran gcc g++ \
	&& wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py38_4.9.2-Linux-x86_64.sh -O ~/miniconda.sh \
	&& /bin/bash ~/miniconda.sh -b -p /opt/conda \
	&& rm miniconda.sh \
	&& ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh \
	&& echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc \
	&& TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o '/v.*\"' | sed 's:^..\(.*\).$:\1:'` \
	&& curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb \
	&& dpkg -i tini.deb && rm tini.deb \
	&& apt autoremove -y && apt autoclean -y && apt clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/usr/bin/tini", "--" ]
CMD [ "/bin/bash" ]
