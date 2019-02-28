ARG ARCH
FROM multiarch/debian-debootstrap:${ARCH}-buster

RUN apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y \
# Install build dependencies
 && apt-get install -y \
        astyle \
        python3-minimal \
        python3-yaml \
        make \
        gcc \
        clang \
        python3-nose \
        python3-rednose \
        valgrind \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
