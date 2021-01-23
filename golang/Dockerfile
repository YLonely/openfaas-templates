FROM golang:1.15 AS build

RUN mkdir /project
WORKDIR /project
COPY . /project
RUN go mod tidy && go build -o /bin/function

FROM ubuntu

COPY --from=build /bin/function /bin/function

CMD [ "/bin/function" ]
