#!/bin/bash

if [ ! -d /data/$1/.dat ]; then
  dat clone $1
fi

dat sync
