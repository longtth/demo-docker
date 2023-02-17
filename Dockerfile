FROM ruby:2.7
WORKDIR /app
RUN apt-get update; \
    apt-get upgrade -y; \
    apt-get install -y build-essential libssl-dev libreadline-dev libyaml-dev \
      default-libmysqlclient-dev gnupg2 nodejs
RUN gem install rails --no-document; rails new .
ENV RAILS_ENV="development"
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server"]
