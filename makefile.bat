@echo off
set MODE=%~1

if "%MODE%" == "build" (
    go build -v ./cmd/apiserver
)

if "%MODE%" == "test" (
    go test -v -race -timeout 30s ./ ...
)