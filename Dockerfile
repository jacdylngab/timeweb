FROM ubuntu:latest

# Install necessary software for development
RUN apt-get update && apt-get install -y \
    vim curl git sudo gcc g++ \
    python3 python3-pip python3-venv python3-dev \
    build-essential libffi-dev libc-dev
 
# Setup a developer user that is not root
RUN useradd -m developer && echo "developer ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/developer

# Switch to devoloper user
USER developer
WORKDIR /home/developer

# Git config
COPY .profile .profile
RUN sudo chown developer:developer .profile && sudo chmod 644 .profile

EXPOSE 8089

CMD ["/bin/bash", "-l"]
