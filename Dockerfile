# A super-simple qr-code server that exposes port 8080
#
FROM jfloff/alpine-python:latest-slim
MAINTAINER Justin Wood <Justin.Wood@rackspace.com>

# install pip and hello-world server requirements
RUN mkdir /app
ADD app.py /app/app.py
ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# in case you'd prefer to use links, expose the port
EXPOSE 8080
ENTRYPOINT ["python", "/app/app.py"]
