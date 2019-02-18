FROM multiarch/debian-debootstrap:powerpc-jessie

COPY ppc-sources.list /etc/apt/sources.list.d/

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
        python3-minimal \
        python3-yaml \
        make \
        gcc \
        clang \
        python3-nose \
        python3-rednose \
# Cleanup
 && rm -rf /var/lib/apt/lists/*
