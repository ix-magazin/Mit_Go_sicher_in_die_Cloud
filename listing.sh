#################################
## Listing 1: Signierte Images ##
#################################

$ docker trust inspect --pretty nginx:1.23.0       # Shows trust data
$ DOCKER_CONTENT_TRUST=1 docker pull nginx:1.23.0  # Successfully pulls the image
$ DOCKER_CONTENT_TRUST=1 docker pull curlimages/curl:7.83.1
Error: remote trust data does not exist [...]
$ DOCKER_CONTENT_TRUST=1 docker pull gcr.io/distroless/static:latest
Error: error contacting notary server [...]
