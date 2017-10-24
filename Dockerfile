FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /trip
WORKDIR /trip
ADD Gemfile /trip/Gemfile
ADD Gemfile.lock /trip/Gemfile.lock
RUN bundle install
ADD . /trip
