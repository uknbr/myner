#!/bin/bash
git clone https://github.com/alexellis/mine-with-docker
cd mine-with-docker/cpu-opt
docker build -t cpu-opt:latest .