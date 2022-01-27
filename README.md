## About

An Ansible playbook for setting up a Manjaro development machine from scratch.
The scripts are tested inside of a docker container to avoid interfering with
my real machine.

## Testing

```
make build  # to build the docker image
make run    # to run the playbook in a container and remove when finished
```

## TODO

- [ ] Create a role to set up a machine without root access using [Linux Brew].
- [ ] Add tasks to set up miniconda, npm, nvm, make and other dev tools.
- [ ] Create a role to set up a MacOS machine
- [ ] Create a role to set up an Ubuntu machine
- [ ] Create tags so that I can install only tui or only gui software


[Linux Brew]: https://docs.brew.sh/Homebrew-on-Linux
