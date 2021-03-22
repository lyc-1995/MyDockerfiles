FROM lyc1995/bio-base:20.04.2

ENV DEBIAN_FRONTEND=noninteractive 

# Configre new user and samtools within one layer
RUN sudo apt update \
	&& sudo apt install -y --no-install-recommends \
		dpkg \
		make \
		libbz2-dev \
		libcurl4-gnutls-dev \
		liblzma-dev \
		libncurses5-dev \
		wget \
	&& mkdir $HOME/samtools && cd $HOME/samtools \
	&& wget https://github.com/samtools/samtools/releases/download/1.12/samtools-1.12.tar.bz2 \
	&& tar jxvf samtools-1.12.tar.bz2 \
	&& cd  $HOME/samtools/samtools-1.12 \
	&& sudo ./configure --prefix=$HOME/samtools-1.12 \
	&& sudo make \
	&& sudo make install \
	&& rm  $HOME/samtools -rf \
	&& sudo apt purge -y wget && sudo apt autoremove -y && sudo apt autoclean -y && sudo rm -rf /var/lib/apt/lists/*
