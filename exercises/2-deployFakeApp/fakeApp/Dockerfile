#TO FINISH
FROM golang:1.13-alpine AS build

WORKDIR /src/
COPY main/fakeApp.go /src/

RUN go build -o /bin/fakeApp
ENTRYPOINT ["/bin/fakeApp"]