FROM ruby:2.3.3
ENV LANG C.UTF-8
RUN curl -sL https://deb.nodesource.com/setup_7.x  | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN npm install -g typescript
ENV APP /app
RUN mkdir $APP
WORKDIR $APP
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
ADD . $APP
RUN bin/yarn install
