FROM amazonlinux

RUN yum install zip -y

CMD zip zip-lambda-layer.zip /bin/zip && \
    zip -j zip-lambda-layer.zip /usr/lib64/libbz2.so.1
