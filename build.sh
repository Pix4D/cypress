#!/bin/bash
docker --version
docker build --no-cache -t cypress -f Dockerfile context
docker images