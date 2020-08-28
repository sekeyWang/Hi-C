#!/bin/bash

mkdir ~/armatus/build && cd ~/armatus/build && cmake -DCMAKE_CXX_COMPILER="g++" .. && make
