FROM ruby:3.4.2-alpine

RUN apk update && apk upgrade && apk add --update bash build-base libxml2-dev libxslt-dev postgresql-client postgresql-dev npm yarn tzdata shared-mime-info git
RUN apk add imagemagick imagemagick-dev imagemagick-libs
RUN apk add curl yaml-dev

WORKDIR /app
RUN gem install nokogiri

COPY . .

RUN bundle install --jobs=10
RUN yarn install --modules-folder /node_modules
ENV PATH /usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/node_modules/.bin

# ENTRYPOINT ["bundle", "exec"]
# CMD [ "deploy/start_server.sh" ]
