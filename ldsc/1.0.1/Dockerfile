FROM lyc1995/miniconda2:4.7.12

RUN  apt update \
	 && apt install -y --no-install-recommends zlib1g-dev \
	 && apt autoremove -y &&  apt autoclean -y &&  apt clean &&  rm -rf /var/lib/apt/lists/*

RUN conda install python=2.7.13 \
	&& pip install --no-cache-dir argparse==1.3.0 \
	&& pip install --no-cache-dir bitarray==0.8.1 \
	&& pip install --no-cache-dir nose==1.3.4 \
	&& pip install --no-cache-dir numpy==1.8.0 \
	&& pip install --no-cache-dir pandas==0.20.0 \
	&& pip install --no-cache-dir scipy==0.11.0 \
	&& pip install --no-cache-dir pybedtools==0.7

RUN git clone https://github.com/bulik/ldsc.git \
	&& cd ldsc \
	&& git reset --hard aa33296 

USER mydocker
