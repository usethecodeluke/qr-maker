# A super-simple "hello world" server that exposes port 8080
#
FROM python
MAINTAINER Justin Wood <Justin.Wood@rackspace.com>

# create user
RUN groupadd web
RUN useradd -d /home/bottle -m bottle

# install pip and hello-world server requirements
ADD main.py /home/bottle/main.py
ADD requirements.txt /home/bottle/requirements.txt
RUN pip install -r /home/bottle/requirements.txt

# in case you'd prefer to use links, expose the port
EXPOSE 8080
ENTRYPOINT ["python", "/home/bottle/main.py"]
USER bottle
