#########################################
#
# (C) MetaMagic Global Inc, NJ, USA, 2022
#
# Arivu Services & Containers
#
# Version 0.2
#
#########################################
# Alpine Base Version
FROM alpine:latest

LABEL author="Araf Karsh Hamid <araf.karsh@metamagic.in>"

RUN apk update && apk add bash && apk add vim && apk add nano

# Install SSL Certificates
RUN apk add ca-certificates && rm -rf /var/cache/apk/*

# Create Software Directories
RUN mkdir -p /Softwares
RUN chmod -R 750 /Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash poduser

COPY --chown=poduser:poduser .bashrc /home/poduser/

RUN chown poduser:poduser /Softwares
RUN chown poduser:poduser /home/poduser/

WORKDIR /home/poduser

# Run the Container as poduser only for SW Containers
#USER poduser

CMD /bin/bash
