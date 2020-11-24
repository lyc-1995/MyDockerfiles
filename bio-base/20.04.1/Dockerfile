FROM lyc1995/ubuntu:20.04.1

ENV DEBIAN_FRONTEND=noninteractive 

RUN sudo apt update && \
	sudo apt install -y --no-install-recommends gnupg2 software-properties-common && \
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
	sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' && \
	sudo apt install -y --no-install-recommends r-base=4.0.3-* && \
	sudo apt purge -y software-properties-common && sudo apt autoremove -y && sudo apt autoclean -y && \
	sudo apt install -y --no-install-recommends make cmake gcc g++ gfortran libcurl4-openssl-dev libxml2-dev libgit2-dev zlib1g-dev libssl-dev && \
	sudo apt install -y --no-install-recommends python3-dev && \
	sudo apt install -y --no-install-recommends openjdk-11-jdk && \
	sudo apt autoremove -y && sudo apt autoclean -y && sudo apt clean && sudo rm -rf /var/lib/apt/lists/*

RUN sudo Rscript -e 'update.packages(ask = FALSE)' && sudo Rscript -e 'install.packages(c("devtools", "BiocManager", "reticulate"), clean = TRUE)' && sudo rm /tmp/Rtmp* -rf
