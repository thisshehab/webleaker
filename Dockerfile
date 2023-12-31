FROM golang:latest

LABEL maintainer="shehabalhayee82@gmial.com"

ENV DEBIAN_FRONTEND=non-interactive

RUN apt-get update && apt-get install -y curl jq git cmake g++

RUN go install github.com/003random/getJS@latest \
    && go install -v github.com/edoardottt/cariddi/cmd/cariddi@latest

WORKDIR /app

COPY . .

RUN chmod +x ./command.sh
RUN chmod +x -R scripts/

CMD []

ENTRYPOINT ["./command.sh"]
