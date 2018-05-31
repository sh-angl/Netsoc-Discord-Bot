FROM golang:1.10-alpine

WORKDIR /go/src/github.com/UCCNetworkingSociety/Netsoc-Discord-Bot
COPY . .

RUN mkdir /logs
RUN go get -d -v ./...
RUN go install -v ./...

CMD ["Netsoc-Discord-Bot"]
