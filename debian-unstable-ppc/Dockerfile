FROM multiarch/debian-debootstrap:powerpc-jessie

COPY ppc-sources.list /etc/apt/sources.list

RUN wget http://ftp.ports.debian.org/debian-ports/pool/main/d/debian-ports-archive-keyring/debian-ports-archive-keyring_2018.12.27_all.deb \
# Install debian-ports keychain
 && dpkg -i debian-ports-archive-keyring_2018.12.27_all.deb \
 && rm debian-ports-archive-keyring_2018.12.27_all.deb \
# Update to unstable
 && apt-get update -qq \
 && apt-get upgrade -y \
 && apt-get dist-upgrade -y \
# Install build dependencies
 && apt-get install -y \
        astyle \
        clang \
        clang-tidy \
        gcc \
        make \
        python3-dev \
        python3-minimal \
        python3-nose \
        python3-pip \
        python3-rednose \
        python3-yaml \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
