FROM ubuntu:22.04

RUN apt update -y
RUN apt upgrade -y

COPY requirements.txt requirements.txt
COPY app.py app.py

RUN apt install python3 python3-pip -y
RUN python3 -m pip install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]
