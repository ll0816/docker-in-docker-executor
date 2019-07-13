FROM docker:stable-dind

RUN apk update
RUN apk add --no-cache bash py-pip
RUN apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make
RUN pip install azure-cli
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/v1.13.3/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl
RUN wget -q https://storage.googleapis.com/kubernetes-helm/helm-v2.14.1-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /usr/local/bin/helm && chmod +x /usr/local/bin/helm
RUN apk del --purge build

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []