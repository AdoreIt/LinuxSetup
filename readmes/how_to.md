# How to

- [How to](#how-to)
  - [Write command output to file and see process in terminal](#write-command-output-to-file-and-see-process-in-terminal)
  - [Open file with highlighting in teminal](#open-file-with-highlighting-in-teminal)
  - [Fix docker load (couldn't connect to docker daemon, service masked)](#fix-docker-load-couldnt-connect-to-docker-daemon-service-masked)

## Write command output to file and see process in terminal

``` bash
command 2>&1 | tee out.txt
```

## Open file with highlighting in teminal

```bash
less -R ./file.txt
# or
cat file.txt | less -R
```

## Fix docker load (couldn't connect to docker daemon, service masked)

```bash
sudo apt-get remove containerd.io
sudo apt install docker docker.io

sudo usermod -aG docker $USER
newgrp docker

sudo systemctl docker unmask
# check status
sudo systemctl docker status

# continue, for example:
docker load image
```
