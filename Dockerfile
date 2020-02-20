FROM ubuntu:18.04


RUN mkdir -p /home/work && \
    sh -c 'export HOME=/home/work' && \
    sh -c 'export GEM_HOME=$HOME/gems' && \
    sh -c 'export PATH=$HOME/gems/bin:$PATH'

RUN apt-get update && \
    apt-get install -y make \
                       build-essential \
                       ruby \
                       ruby-dev

RUN gem install bundler && \
    gem install jekyll && \
    bundle install
