FROM ubuntu:20.04

# Pakage `tzdata` should be installed to make the enviroment vairable `TZ` work
# Setting the DEBIAN_FRONTEND environment variable suppresses the prompt that lets you select the correct timezone from a menu.
ENV TZ Asia/Shanghai
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
                make tzdata \
                zlib1g-dev \
                libudev1 libudev-dev \
                libpci-dev \
                libpciaccess-dev
RUN apt-get install -y --no-install-recommends \
                build-essential