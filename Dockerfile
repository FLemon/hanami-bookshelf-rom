FROM ruby:3.2.2-alpine

WORKDIR /app

RUN apk add --no-cache build-base postgresql postgresql-dev libpq git

RUN gem install bundler

COPY . .

RUN bundle install

EXPOSE 2300
ENTRYPOINT ["bundle", "exec"]
