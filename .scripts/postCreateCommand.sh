#!/bin/bash

composer install

npm install

chmod +x .scripts/*

if ! ln -s .env.example .env; then
    rm -rf .env
    ln -s .env.example .env
fi

