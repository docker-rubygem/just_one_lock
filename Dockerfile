FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install just_one_lock --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["just_one_lock"]
CMD ["--help"]
