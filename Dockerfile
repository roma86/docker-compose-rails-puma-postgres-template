FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /appror
WORKDIR /appror
ADD Gemfile /appror/Gemfile
RUN bundle install
ADD . /appror