# Getting the manjaro base image from the registry
FROM manjarolinux/base

MAINTAINER Ethan Rietz <ewrietz@gmail.com>

# Gets run while container is being built
RUN pacman -Syu --noconfirm ansible

# Create a user account for myself, create a home directory, and set the
# default shell to bash
RUN useradd --create-home --shell /bin/bash ethan

# use the user ethan in the container
USER ethan
WORKDIR /home/ethan

# Get run after container is built
CMD ["echo", "The manjaro docker image is ready for ansible!"]
