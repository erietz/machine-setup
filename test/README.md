## About

These Ansible playbooks are tested inside of a docker container to avoid
interfering with my real machine.

## Installing Docker

- Install docker
    - `sudo pacman -Syu docker`
- Start the docker service
    - `sudo systemctl start docker`
- Manage Docker as a non-root user
    - `sudo groupadd docker`
    - `sudo usermod -aG docker $USER`
    - log out and log back in so the group membership is re-evaluated
- Obtain a manjaro linux container from the docker registry
    - `docker pull manjarolinux/base`
    - This is unnecessary if using the `Dockerfile` in the next step
- Build a docker container using the Dockerfile in the current directory
    - `docker built -t "dotfiles" .`
- Run the container we just built [i]nteractively in a [t]ty
    - `docker run -it <image_Id> bash`
    - You can obtain <image_id> by running `docker images`

- Run the container [i]nteractively in a [t]ty and [r]emove it when done
    - `docker run --rm -it manjarolinux/base bash`

Alternatively, once docker is installed a container can also be built from
a `Dockerfile`.

`docker built -t "dotfiles"` .

### Helpful docker commands

- List all docker containers (running and stopped):
    - `docker ps --all`

- Start a container from an image, with a custom name:
    - `docker run --name container_name image`

- Start or stop an existing container:
    - `docker start|stop container_name`

- Display the list of already downloaded images:
    - `docker images`

- Remove a stopped container:
    - `docker rm container_name`

