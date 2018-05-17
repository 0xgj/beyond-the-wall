## What is this?
A docker-compose file contains spining up a **shadowsocks client** and use **polipo** to 
convert shadowsocks into an HTTP proxy.

tips: setup shadowsocks server:
```sh
docker run -dt --name ss -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m aes-256-cfb -k test123 --fast-open"
```

## How to use?

### Install docker-compose and clone this repo, go into it

```sh
pip install docker-compose
git clone https://github.com/caogj/beyond-the-wall && cd beyond-the-wall
```

just *make* it

```sh
export ss_ip=1.2.3.4
export ss_port=443
export ss_passwd=123456
make
```
Or you can *manually* by following steps:

### Build your own image

If you would like to build your own docker image, simply clone this repo and run:

```sh
cd polipo; docker build -t caogj/polipo .
cd ss-client; docker build -t caogj/ss-client .
```

### Setting connection info in *docker-compose.yml*, then run

```sh
docker-compose up -d
```
### Now your can access your http proxy with address *localhost:8123*.

```
export https_proxy="http://127.0.0.1:8123"
export http_proxy="http://127.0.0.1:8123"
export HTTP_PROXY="http://127.0.0.1:8123"
export HTTPS_PROXY="https://127.0.0.1:8123"
curl www.google.com
```

