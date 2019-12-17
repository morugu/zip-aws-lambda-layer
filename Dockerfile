FROM amazonlinux

RUN yum install zip -y
RUN mkdir -p /tmp/zip-lambda-layer

CMD cd /tmp/zip-lambda-layer && \
    mkdir -p bin && \
    mkdir -p lib && \
    cp /bin/zip ./bin && \
    cp /usr/lib64/libbz2.so.1 ./lib && \
    zip -r zip-lambda-layer.zip ./* && \
    rm -rf lib bin