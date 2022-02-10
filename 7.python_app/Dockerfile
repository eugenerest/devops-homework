FROM ubuntu:18.04
RUN apt-get update
COPY app/requirements.txt /tmp/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr /tmp/requirements.txt
WORKDIR /opt/webapp/
COPY app/ .
EXPOSE 5000
CMD ["python", "app.py"]