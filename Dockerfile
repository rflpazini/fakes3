FROM debian:bullseye-slim

ENV FAKES3_TCP=4567
ENV LICENSE=123123

RUN apt-get update && apt-get install -yqq ruby rubygems-integration

RUN gem install fakes3
RUN mkdir -p /tmp/fakes3

ENTRYPOINT ["/usr/local/bin/fakes3"]
CMD ["-r",  "/tmp/fakes3", "-p",  "$FAKES3_TCP", "--license", "$LICENSE"]

EXPOSE $FAKES3_TCP 
