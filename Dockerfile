FROM ruby:2-bullseye

ENV FAKES3_TCP=4567
ENV LICENSE=123123

WORKDIR /opt/fakes3

RUN gem install fakes3
RUN mkdir -p /var/lib/fakes3/data

EXPOSE $FAKES3_TCP 

ENTRYPOINT fakes3 -r /var/lib/fakes3/data -p $FAKES3_TCP --license $LICENSE
