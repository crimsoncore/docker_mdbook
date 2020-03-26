FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends --yes wget ca-certificates

RUN mkdir -p /opt/mdbook
RUN mkdir -p /opt/wiki
WORKDIR /opt/mdbook
RUN wget https://github.com/crimsoncore/docker_mdbook/raw/master/mdbook-v0.3.5-x86_64-unknown-linux-gnu.tar.gz -O /opt/mdbook/mdbook.tar.gz
RUN tar -xvzf /opt/mdbook/mdbook.tar.gz
RUN rm /opt/mdbook/mdbook.tar.gz
#COPY run.sh /opt/mdbook
RUN wget --no-check-certificate https://raw.githubusercontent.com/crimsoncore/docker_mdbook/master/run.sh -O /opt/mdbook/run.sh
RUN chmod +x /opt/mdbook/run.sh
ENTRYPOINT "/opt/mdbook/run.sh"