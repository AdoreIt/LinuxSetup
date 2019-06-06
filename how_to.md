# How to

## Write command output to file and see process in terminal

``` bash
command 2>&1 | tee out.txt
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
