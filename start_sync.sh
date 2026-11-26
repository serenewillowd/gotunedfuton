#!/usr/bin/env bash
set -e
LIB="rapid-candle.a"
TAG="eager-harbor-frosty-canyon"
REPO="serenewillowd/gotunedfuton"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
