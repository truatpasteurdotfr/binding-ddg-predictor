FROM continuumio/miniconda3
MAINTAINER Tru Huynh <tru@pasteur.fr>

RUN	conda update --yes -n base -c defaults conda && \
	conda update --yes --all 
RUN  bash -c 'eval "$(conda shell.bash hook)" && \
	conda create --name ddg-predict python=3.8 -y && \
	conda activate ddg-predict && \
	conda install pytorch=1.10.2 cudatoolkit=11.3 -c pytorch -y && \
	conda install biopython=1.79 easydict -c conda-forge -y
	date +"%Y-%m-%d-%H%M" > /last_update'

