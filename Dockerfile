# Dockerfile for a general-purpose Data Science project ; 
# Jupyter notebook with R and Python
# optimize for your needs ; see README

# Use the Jupyter minimal notebook image as the base
FROM jupyter/r-notebook

LABEL maintainer="Amnah Siddiqa <amnah.siddiqa@cchmc.org>"
LABEL version="0.0.0"
LABEL description="General-purpose R and Python Jupyter notebook image"

# Install R packages using conda
RUN conda install -c conda-forge r-hmisc
RUN conda install -c r r-car
RUN conda install -c odsp-test/label/test r-nmf
RUN conda install -c conda-forge r-ggpubr
RUN conda install -c bioconda r-factominer
RUN conda install -c conda-forge r-factoextra
RUN conda install -c bioconda r-pheatmap

# Clean up the conda installation to reduce image size
RUN conda clean --all --yes

# Upgrade pip and install Python packages from requirements file
RUN pip install --upgrade pip
ADD requirements_py.md .

# Uncomment the following line if you want to install Python packages from a requirements file
RUN pip install -r requirements_py.md

