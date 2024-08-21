FROM debian:sid

RUN apt update && apt install -y \
		git \
    lynx \
    neovim \
    sudo\
	  && rm -rf /var/lib/apt/lists/*

ENV SHELL=/bin/bash

