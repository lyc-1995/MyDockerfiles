FROM lyc1995/ubuntu:20.04.2

USER root

ENV DEBIAN_FRONTEND=noninteractive \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm

RUN apt update \
	&& apt install -y --no-install-recommends \
		cmake \
		g++ \
		gcc \
	 	gfortran \
	 	gnupg2 \
	 	make \
	 	libblas-dev \
	 	libcurl4-openssl-dev \
	 	libgit2-dev \
	 	liblapack-dev \
	 	libssl-dev \
	 	libxml2-dev \
	 	locales \
	 	openjdk-11-jdk \
	 	perl \
	 	python3-dev \
	 	python3-pip \
	 	software-properties-common \
	 	zlib1g-dev \	
	&& echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen en_US.utf8 \
	&& /usr/sbin/update-locale LANG=en_US.UTF-8 \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
	&& add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' \
	&& apt install -y --no-install-recommends r-base=4.0.4-* \
	&& apt purge -y software-properties-common \
	&& apt autoremove -y && apt autoclean -y && rm -rf /var/lib/apt/lists/*

USER mydocker

RUN sudo Rscript -e 'update.packages(ask = FALSE)' \
	&& sudo Rscript -e 'install.packages(c("devtools", "BiocManager", "reticulate"), clean = TRUE, dependency = FALSE)'
