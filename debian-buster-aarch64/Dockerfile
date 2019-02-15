FROM multiarch/debian-debootstrap:arm64-buster

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y \
# Install build dependencies
 && apt-get install -y \
        python3-minimal \
        python3-yaml \
        make \
        gcc \
        clang \
        python3-nose \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
