FROM ubuntu:14.04　
MAINTAINER Shin Ando <shinglish11@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
  build-essential \
  curl \
  git-core \
  libcurl4-openssl-dev \
  libreadline-dev \
  libssl-dev \
  libxml2-dev \
  libxslt1-dev \
  libyaml-dev \
  zlib1g-dev

# Install Ruby
RUN curl -O https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.bz2
RUN tar jxvf ruby-2.3.1.tar.bz2
WORKDIR /ruby-2.3.1
RUN ./configure --disable-install-doc
RUN make
RUN make install
WORKDIR /
RUN rm -r ruby-2.3.1 ruby-2.3.1.tar.bz2
RUN echo 'gem: --no-document' > /usr/local/etc/gemrc

# Install Bundler
RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc
RUN gem install bundler

# Install Node.js and Yarn
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN echo 'deb http://archive.ubuntu.com/ubuntu precise universe' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install nodejs
RUN npm install yarn
