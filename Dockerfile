FROM golang:1.22.5

WORKDIR /CI_CD_Sprint_12

COPY go.mod go.sum tracker.db ./

RUN go mod download 

COPY *.go ./

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

RUN go build -o /doc_final

CMD ["/doc_final"]
