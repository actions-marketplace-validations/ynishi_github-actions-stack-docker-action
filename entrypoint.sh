#!/bin/sh -l

STACK_ARGS=$(echo "$@" | awk -F'APT_PACKAGES=' '{print $1}')
APT_PACKAGES=$(echo "$@" | awk -F'APT_PACKAGES=' '{print $2}')

if [ -n "$APT_PACKAGES" ]; then
  apt-get install -y $APT_PACKAGES
fi
stack $STACK_ARGS
