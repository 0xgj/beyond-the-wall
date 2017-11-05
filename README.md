## What is this?
A docker-compose file contains spining up a **shadowsocks client** and use **polipo** to 
convert shadowsocks into an HTTP proxy.

## How to use?
* Install docker-compose and clone this repo, go into it

```sh
pip install docker-compose
git clone https://github.com/caogj/beyond-the-wall && cd beyond-the-wall
```
* Build your own image

If you would like to build your own docker image, simply clone this repo and run:

```sh
cd polipo; docker build -t caogj/polipo .
cd ss-client; docker build -t caogj/ss-client .
```

* Setting connection info in *docker-compose.yml*, then run

```sh
docker-compose up -d
```

Now your can access your http proxy with address *localhost:8123*.

