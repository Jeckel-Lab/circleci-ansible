FROM python:alpine
LABEL maintainer="Julien MERCIER-ROJAS <julien@jeckel-lab.fr>"
RUN apk --update --no-cache add rsync ansible openssh-client
