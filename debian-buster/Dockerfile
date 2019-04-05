ARG ARCH
FROM multiarch/debian-debootstrap:${ARCH}-buster

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y \
# Install build dependencies
 && apt-get install -y \
        astyle \
        clang \
        clang-tidy \
        gcc \
        git-core \
        make \
        python3-dev \
        python3-minimal \
        python3-nose \
        python3-pip \
        python3-rednose \
        python3-yaml \
        valgrind \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
