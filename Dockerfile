FROM ruby:2.4

COPY ./Gemfile /opt/kiss_blue/
WORKDIR /opt/kiss_blue/
RUN bundle update

COPY ./ /opt/kiss_blue

ENTRYPOINT [ "./api.rb" ]
