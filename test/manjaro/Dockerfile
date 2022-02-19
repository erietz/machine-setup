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

COPY . .

# Gets run after container is built
CMD ["sh", "-c", "ansible-playbook --ask-become-pass manjaro.yml; bash"]
