##
# geographica/eccodes
#
# This creates an Ubuntu derived base image that installs ecCodes.
#

# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

MAINTAINER Cayetano Benavent <cayetano.benavent@geographica.gs>

# Ensure the package repository is up to date
RUN apt-get update -y

# Install basic dependencies
RUN apt-get install -y \
    software-properties-common \
    python-software-properties \
    build-essential \
    libboost-all-dev \
    cmake \
    gfortran \
    python-dev \
    python-numpy \
    libjasper-dev \
    libnetcdf-dev \
    libhdf5-dev \
    libopenjpeg-dev \
    wget \
    vim

# Get the sources, compile and install ecCodes
ADD ./getsourcesandcompile.sh /tmp/
RUN sh /tmp/getsourcesandcompile.sh
