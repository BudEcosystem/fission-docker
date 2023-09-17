# Use the alpine base image
FROM alpine:latest

# Set a maintainer label
LABEL maintainer="rahul.vr@bud.studio"

# Update and install necessary packages, then download and move fission binary
RUN apk update && \
    apk add curl && \
    curl -Lo fission https://github.com/fission/fission/releases/download/v1.19.0/fission-v1.19.0-linux-amd64 && \
    chmod +x fission && \
    mv fission /usr/local/bin/

# Default command, if you need one
ENTRYPOINT ["fission"]
