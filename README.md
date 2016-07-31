# docker-activemq
docker-activemq
## build

* `docker build -t java:activemq .`

## run

* `docker run -d -p 8161:8161 -p 61616:61616 java:activemq`

## port

EXPOSE 8161 and 8161

## manager

url:http://localhost:8161
login：username:admin,passwd:admin}
