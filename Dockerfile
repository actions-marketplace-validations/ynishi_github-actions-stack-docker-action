FROM ubuntu:eoan-20190916

RUN set -e \
  && apt-get update \
  && apt-get install curl -y \
  && curl -sSL https://get.haskellstack.org/ | sh \
  && stack --compiler ghc-8.6.5 setup

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
