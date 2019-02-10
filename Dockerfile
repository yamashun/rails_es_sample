FROM ruby:2.5.3-stretch

ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/vendor/bundle \
  RAILS_ENV=development \
  BUNDLE_APP_CONFIG=/app/.bundle \
  LANG=C.UTF-8

RUN apt-get update -qq
RUN apt-get install -y build-essential 
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

# ワーキングディレクトリの設定
RUN mkdir /app
WORKDIR /app