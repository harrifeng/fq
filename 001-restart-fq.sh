#!/bin/bash
docker ps -a | grep fq-docker | awk '{print $1}' | xargs --no-run-if-empty docker rm -vf
docker run --name fq-docker --restart=always -d -p 1984:1984 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1984 -k $PASSWD -m aes-256-cfb
