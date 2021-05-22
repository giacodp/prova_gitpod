FROM python:3.6.8-slim
RUN apt update && apt install -y nano git
ENV REPO=prova_gitpod
RUN git clone https://github.com/giacodp/$REPO.git
RUN python -m pip install -U pip && python -m pip install -r $REPO/requirements.txt
