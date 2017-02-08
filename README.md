# qr-maker

This simple project contains a barebones python bottle web app built with a Dockerfile.

The app can be run by cloning the repo, and then running these two simple commands:

1. Build the image:

`
docker build -t qr-maker .
`

2. Instantiate the container:

`
docker run -itp 8080:8080 qr-maker
`

Once running, open another terminal, and curl port 8080 on localhost to receive a random qr code:

`
curl 127.0.0.1:8080/
`

Alternatively, just point a web browser to the same address.
