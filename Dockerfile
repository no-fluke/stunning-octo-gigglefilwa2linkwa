FROM python:3.10.8-slim-bullseye
RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /rexbots
WORKDIR /rexbots
COPY . /rexbots
CMD ["python", "bot.py"]
