docker-compose build
docker-compose run rake db:setup
docker-compose up
docker-compose run app bash

