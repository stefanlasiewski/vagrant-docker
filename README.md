# vagrant-ubuntu-docker

Provides an Ubuntu host running Docker CE (Community Edition). Installs Docker following the
official instructions at https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/
as closely as practical.

Installs Ubuntu, Docker CE and tests the finished image with `docker run hello-world`.

Supports Docker CE Stable, Edge [Deprecated in July 2018](https://docs.docker.com/edge/)
and Test. Simply change the `DOCKER_REPOS` variable inside `install-docker.sh`.

# Usage

Simply clone this repo, and run `vagrant up`:

```
$ vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Importing base box 'ubuntu/xenial64'
...
...
==> default: + sudo docker run hello-world
...
==> default: Status: Downloaded newer image for hello-world:latest
==> default: 
==> default: Hello from Docker!
==> default: This message shows that your installation appears to be working correctly.
...
```

## Specifying specific Docker versions

To specify a specific version of Docker, pass an argument to the script in the
Vagrantfile like this:

```
config.vm.box = "ubuntu/xenial64"
config.vm.provision :shell, path: "install-docker.sh", args: "17.03.3~ce-0~ubuntu-xenial"
```
