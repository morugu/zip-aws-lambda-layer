# zip for AWS Lambda as layer

## Build

```
$ docker build -t zip-lambda-layer .
$ docker run -v "${PWD}/dist":/tmp/zip-lambda-layer zip-lambda-layer:latest
```
