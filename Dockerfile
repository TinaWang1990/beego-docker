FROM golang:1.14

RUN go get -u github.com/beego/bee

# ENV GO111MODULE=on
ENV GOFLAGS=-mod=vendor
ENV APP_HOME /go/src/mathapp

WORKDIR $APP_HOME
EXPOSE 8010
CMD ["bee", "run"]