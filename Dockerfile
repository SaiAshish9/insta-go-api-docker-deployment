FROM golang:1.13

WORKDIR /app

RUN go get -u "github.com/lib/pq"

RUN go get -u "github.com/saiashish9/insta-go-api-docker-deployment"



ADD . /app

ENTRYPOINT ["go","run","main.go"]