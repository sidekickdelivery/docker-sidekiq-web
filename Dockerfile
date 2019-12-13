FROM ruby:2.5.1-alpine

WORKDIR /sidekiq

COPY Gemfile* ./

RUN bundle install

COPY config.ru .

CMD rackup config.ru -o 0.0.0.0 -p 3030 -q
