FROM multiarch/debian-debootstrap:armhf-buster

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y \
# Install build dependencies
 && apt-get install -y python3-minimal python3-yaml make gcc clang \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
