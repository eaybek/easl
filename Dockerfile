FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/easl/easl/ /root/packages/easl/
WORKDIR /root/packages/easl
RUN pip3 install /root/packages/easl

CMD ["python3","test/easl.py"]


