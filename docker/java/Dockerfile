#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# This container is deprecated based on Oracle License Change
# on April 2019. Use OpenJDK for commercial activities.
#
# Version 0.1
#################################################################
# Base Version
FROM anapsix/alpine-java

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

# Install wget, curl and nano
RUN apk update && apk add wget && apk add curl && apk add nano && apk add vim && apk add bash

# Create Software Directories
RUN mkdir -p /Softwares 
RUN chmod -R 750 /Softwares

# Add user
RUN adduser -D -u 2048 -s /bin/bash poduser

ADD .bashrc /home/poduser/
RUN chown poduser:poduser /home/poduser/.bashrc
RUN chown poduser:poduser /Softwares

WORKDIR /home/poduser

# Run the Container as poduser
USER poduser

CMD /bin/bash
