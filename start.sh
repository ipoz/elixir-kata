#!/bin/bash
docker build -t elixir-kata .
docker run  -v ${PWD}/kata:/root/kata -it elixir-kata /bin/bash