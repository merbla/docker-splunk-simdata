FROM openjdk:8-alpine

RUN apk add --update --no-cache make bash curl git ca-certificates openssh-client wget
RUN wget -O simdata-1.0.0.jar http://download.splunk.com/misc/simdata/simdata-1.0.0.jar

EXPOSE 11013

# RUN wget -O simdata-example-1.0.0.zip https://download.splunk.com/misc/simdata/simdata-example-1.0.0.zip
ADD simdata-example /simulation
CMD echo "Sleeping for Splunk to start..." && \
    sleep 25 && \
    echo "Running sim..." && \
    java -jar simdata-1.0.0.jar -s simulation/webserver.simulation -c simulation/webserver.json
