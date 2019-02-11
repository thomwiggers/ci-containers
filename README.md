# ci-containers
Containers with CI configurations for the [PQClean main project](/PQClean/PQClean).

This repository contains Dockerfiles that assist CI in the PQClean repository.
They are built using travis ci, which should update them at least once weekly.

The current containers are derivations from the `multiarch/debian-debootstrap` containers and you should run the following command before trying to launch one of them:

    docker run --rm --privileged multiarch/qemu-user-static:register --reset
