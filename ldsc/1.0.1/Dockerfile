FROM lyc1995/miniconda3:2020.11

RUN git clone https://github.com/bulik/ldsc.git \
	&& cd ldsc \
	&& git reset --hard aa33296 \
	&& conda env create --file environment.yml \
	&& echo "conda activate ldsc" >> ~/.bashrc

USER mydocker
