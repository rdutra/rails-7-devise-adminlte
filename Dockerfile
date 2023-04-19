FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app

## importmaps (after these are commited there's no need to have them in the build)
# RUN ./bin/importmap pin bootstrap@4 --download
# RUN ./bin/importmap pin admin-lte --download
# RUN ./bin/importmap pin @fortawesome/fontawesome-free
## 
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
