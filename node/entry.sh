#!/bin/bash

if [ ! -f /${WORK}/package.json ]; then
    npm init -y
fi

if [ ! -f /${WORK}/initialized ]; then
    npm install
    touch /${WORK}/initialized
fi

/bin/bash --rcfile /usr/local/etc/bashrc
