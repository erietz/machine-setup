# Getting the ubuntu base image from the registry
FROM ubuntu:focal

MAINTAINER Ethan Rietz <ewrietz@gmail.com>

# Gets run while container is being built
RUN apt-get update && apt-get upgrade -y
RUN apt-get install ansible -y

# Create a user account for myself, create a home directory, and set the
# default shell to bash
RUN useradd --create-home --shell /bin/bash ethan
RUN echo "ethan:secret_pw" | chpasswd
RUN printf 'root ALL=(ALL) ALL\n' | tee -a /etc/sudoers
RUN printf 'ethan ALL=(ALL) ALL\n' | tee -a /etc/sudoers

# use the user ethan in the container
USER ethan
WORKDIR /home/ethan

COPY . .

ENV USER=ethan

# Runs while image is being built
# cannot use interactive --ask-become-pass option from Dockerfile RUN
RUN ansible-playbook ubuntu.yml --extra-vars='ansible_become_pass=secret_pw'

# Runs when the container starts
CMD ["zsh"]
