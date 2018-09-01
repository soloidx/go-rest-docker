FROM golang:latest
RUN mkdir -p /go/src/app/
ADD . /go/src/app/
WORKDIR /go/src/app/
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
RUN dep ensure
# RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .
RUN mkdir -p /build
RUN cp main /build/main
CMD ["/go/src/app/main"]