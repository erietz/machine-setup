# Getting the manjaro base image from the registry
FROM manjarolinux/base

MAINTAINER Ethan Rietz <ewrietz@gmail.com>

# Gets run while container is being built
RUN pacman -Syu --noconfirm ansible

# Create a user account for myself, create a home directory, and set the
# default shell to bash
RUN useradd --create-home --shell /bin/bash ethan
RUN echo "ethan:secret_pw" | chpasswd
RUN printf 'root ALL=(ALL) ALL\n' | tee -a /etc/sudoers
RUN printf 'ethan ALL=(ALL) ALL\n' | tee -a /etc/sudoers

# use the user ethan in the container
USER ethan
WORKDIR /home/ethan

# Copy everything in the current working directory of the host (should be the
# root of this project) into the working directory of the container.
COPY . .

ENV USER=ethan

# Runs while image is being built
# cannot use interactive --ask-become-pass option from Dockerfile RUN
RUN ansible-playbook manjaro.yml --extra-vars='ansible_become_pass=secret_pw'

# Runs when the container starts
CMD ["zsh"]
