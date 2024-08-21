FROM debian:sid

RUN apt update && apt install -y \
		git \
    lynx \
    neovim \
    sudo\
	  && rm -rf /var/lib/apt/lists/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

