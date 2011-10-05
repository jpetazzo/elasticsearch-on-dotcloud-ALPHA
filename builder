#!/bin/sh

slowbuild () {
    # unsupported
    true
}

fastbuild () {
    curl -L https://github.com/downloads/elasticsearch/elasticsearch/elasticsearch-0.17.7.tar.gz |
    tar -zxf-
    grep ^http.port elasticsearch-0.17.7/config/elasticsearch.yml ||
        echo 'http.port: 8080-8080' >> elasticsearch-0.17.7/config/elasticsearch.yml
}

cd
fastbuild
