BootStrap: docker
From: ghcr.io/truatpasteurdotfr/binding-ddg-predictor:main

%environment
# do not use ~/.local python
PYTHONNOUSERSITE=1 
export PYTHONNOUSERSITE

eval "$(conda shell.bash hook)" && \
conda activate ddg-predict

