#################################################################
#
# PodShell - Developer Tool box to test Pods in Kubernetes
#
# (C) MetaMagic Global Inc, NJ, USA, 2021
#
# Arivu Services & Containers
#
# Version 0.1
#################################################################
# Base Version
FROM metamagic/alpine

MAINTAINER Araf Karsh Hamid <araf.karsh@metamagic.in>

RUN mkdir -p /home/bin
RUN mkdir -p /home/data

COPY gb.sh /home/bin

WORKDIR /home/data


ENTRYPOINT ["/home/bin/gb.sh"] 
