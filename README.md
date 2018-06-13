# Hostpath provisioner
This is the demo code in the [kubernetes-incubator](https://github.com/kubernetes-incubator/external-storage/tree/master/docs/demo/hostpath-provisioner)-Project,
along with the modifications proposed [here](https://github.com/MaZderMind/hostpath-provisioner).

## Build and Upload to DockerHub
This is a go project so we need to work through its dependencies.

We first [install golang](https://github.com/golang/go/wiki/Ubuntu)
and make sure `/snap/bin` is in you path 


```
sudo snap install --classic go
```

Set the GOPATH and the rest of environment variables with something similar to this:

```
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
mkdir -p $GOBIN
```

Dependency management is done through [glide](https://github.com/Masterminds/glide)

```
curl https://glide.sh/get | sh
```

We also need docker to create and push our image on Docker hub

```
sudo apt-get install docker.io
sudo usermod -a -G docker $USER
```

At this point we are able to get the source code and compile it
```
go get github.com/juju-solutions/hostpath-provisioner
cd $GOPATH/src/github.com/juju-solutions/hostpath-provisioner
make
```

To build and push the docker image you need to first login in ad cdkbot
```
docker login
make image
make push
```

