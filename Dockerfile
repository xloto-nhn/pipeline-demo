# Build stage
FROM golang:1.23-alpine AS builder

WORKDIR /app
COPY main.go .
COPY go.mod .
RUN CGO_ENABLED=0 GOOS=linux go build -a -o hello-world .

# Final stage
FROM alpine:latest
COPY --from=builder /app/hello-world /hello-world
EXPOSE 8080
ENTRYPOINT ["/hello-world"]