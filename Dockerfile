# Minimal Docker image for Galah using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install Galah
RUN micromamba create -y -n coverm -c defaults -c conda-forge -c bioconda galah==0.5.2 && \
    micromamba clean --all --yes
ENV ENV_NAME=coverm
