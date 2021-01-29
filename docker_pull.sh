#!/usr/bin/env bash
set -x
set -e

docker pull mysql:5.7
docker pull redis:3.2
docker pull openzipkin/zipkin-kafka
docker pull openzipkin/zipkin
docker pull webcenter/activemq:latest
docker pull docker.elastic.co/elasticsearch/elasticsearch:6.6.1
docker pull docker.elastic.co/kibana/kibana:6.6.1
docker pull docker.elastic.co/logstash/logstash:6.6.1

