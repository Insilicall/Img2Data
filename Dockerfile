# Set the base image to a LTS (long-term support) Ubuntu release
FROM ubuntu:20.04

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install --yes --no-install-recommends \
       git git-lfs unzip wget ca-certificates python3 xz-utils libxml2 \
       sudo tzdata python3-distutils \
    && DEBIAN_FRONTEND=noninteractive \
       ln -fs /usr/share/zoneinfo/UTC /etc/localtime \
    && DEBIAN_FRONTEND=noninteractive \
       dpkg-reconfigure --frontend noninteractive tzdata

# Create app directory
WORKDIR /Img2Data

# Bundle app source
COPY . .

RUN grep -v wine setupUbuntuDev.sh | \
       sed 's/apt install/apt-get install --yes --no-install-recommends/' > setupUbuntuDev-aptfix.sh \
    && chmod +x setupUbuntuDev-aptfix.sh \
    && DEBIAN_FRONTEND=noninteractive \
       ./setupUbuntuDev-aptfix.sh