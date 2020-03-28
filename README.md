# matomo-docker
Matomo Docker Image with non-root user and 8085 port

Modifiled the matomo docker image

Source Code Ref: https://github.com/matomo-org/docker

Following Modification Done:

1. Run apache server as non root user so that it can deployed on openshift or like platform where we have restriction of running images as non root user
2. Run the apache on 8085 
