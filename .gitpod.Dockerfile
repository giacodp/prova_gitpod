FROM python:3.6.8-slim
RUN apt update && apt install -y nano git
RUN pwd
RUN python -m pip install -U pip && python -m pip install -r requirements.txt
RUN apt clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*
