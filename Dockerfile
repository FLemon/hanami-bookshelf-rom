FROM ruby:3.0.6-alpine

WORKDIR /app

RUN apk add --no-cache build-base postgresql postgresql-dev libpq git

RUN gem install bundler

COPY Gemfile .

RUN bundle install

COPY . .
EXPOSE 2300
ENTRYPOINT ["bundle", "exec"]
