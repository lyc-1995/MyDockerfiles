FROM lyc1995/bio-base:20.04.1

ENV DEBIAN_FRONTEND=noninteractive 

# Configre new user and samtools within one layer
RUN sudo apt update && \
	sudo apt install -y --no-install-recommends wget dpkg make gcc perl zlib1g-dev libbz2-dev liblzma-dev libcurl4-gnutls-dev libssl-dev libncurses5-dev && \
	mkdir $HOME/samtools && cd $HOME/samtools && \
	wget https://github.com/samtools/samtools/releases/download/1.10/samtools-1.10.tar.bz2 && tar jxvf samtools-1.10.tar.bz2 && \
	cd  $HOME/samtools/samtools-1.10 && sudo ./configure --prefix=$HOME/samtools-1.10 && sudo make && sudo make install && \
	rm  $HOME/samtools -rf && \
	sudo apt purge -y wget && sudo apt autoremove -y && sudo apt autoclean -y && sudo rm -rf /var/lib/apt/lists/*
