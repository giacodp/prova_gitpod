FROM python:3.6.8-slim

# apt install packages
RUN apt update && apt install -y nano git
RUN apt clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

# pip install libraries
ENV REPO_EP=github.com/giacodp
ENV REPO=prova_gitpod
RUN git clone https://$REPO_EP/$REPO.git
RUN python -m pip install -U pip && python -m pip install -r $REPO/requirements.txt
RUN rm -rf $REPO

# useful alias
RUN echo 'alias ls="ls --color"' >> /etc/bash.bashrc && echo 'alias ll="ls -l"' >> /etc/bash.bashrc && ldconfig
