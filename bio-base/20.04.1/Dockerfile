FROM lyc1995/ubuntu:20.04.1

USER root

ENV DEBIAN_FRONTEND=noninteractive \
    LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8 \
    TERM=xterm

RUN  apt update && \
	 apt install -y --no-install-recommends gnupg2 software-properties-common locales && \
	 echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	 locale-gen en_US.utf8 && \
	 /usr/sbin/update-locale LANG=en_US.UTF-8 && \
	 apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
	 add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' && \
	 apt install -y --no-install-recommends r-base=4.0.3-* && \
	 apt purge -y software-properties-common && apt autoremove -y &&  apt autoclean -y && \
	 apt install -y --no-install-recommends make cmake gcc g++ gfortran libcurl4-openssl-dev libxml2-dev libgit2-dev zlib1g-dev libssl-dev perl && \
	 apt install -y --no-install-recommends python3-dev python3-pip && \
	 apt install -y --no-install-recommends openjdk-11-jdk && \
	 apt autoremove -y &&  apt autoclean -y &&  apt clean &&  rm -rf /var/lib/apt/lists/*

RUN  Rscript -e 'update.packages(ask = FALSE)' &&  Rscript -e 'install.packages(c("devtools", "BiocManager", "reticulate"), clean = TRUE)' &&  rm /tmp/Rtmp* -rf

USER mydocker
