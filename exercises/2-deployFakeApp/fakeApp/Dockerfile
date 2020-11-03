# Uses GOLANG offical container image which is Alpine Linux OS with Go installed inside
FROM golang:1.13-alpine AS build
# Copys our .go to the source of the container
WORKDIR /src/
COPY main/fakeApp.go /src/
# Builds a binary file
RUN go build -o /bin/fakeApp
# binary to run
ENTRYPOINT ["/bin/fakeApp"]