# vagrant-docker
Ubuntu host running Docker CE, installed per https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/

Installs Ubuntu, Docker CE and runs `docker run hello-world`.

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
