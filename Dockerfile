FROM amazonlinux

RUN yum install zip -y

CMD mkdir zip-lambda-layer && cd &_ && zip zip-lambda-layer.zip /bin/zip && \
    zip -j zip-lambda-layer.zip /usr/lib64/libbz2.so.1
