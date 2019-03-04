# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/base-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

# Install Python 3 packages
RUN conda install --quiet --yes \
    'numpy' \
    'pandas' \
    'matplotlib' \
    'geopandas' \
    'lxml'  && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Use pip to replace conda's broken fiona build
# so geopandas can be functional
RUN pip install --no-cache-dir --ignore-installed \
    fiona && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
