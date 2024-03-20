FROM golang:1.20.5

# Go modules via `go install`
RUN go install github.com/99designs/gqlgen@v0.17.23

# golangci-lint via binary installation
ENV GOLANGCI_LINT_VERSION v1.57.0
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin $GOLANGCI_LINT_VERSION
