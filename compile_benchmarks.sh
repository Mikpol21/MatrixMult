#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Compiling with and without loops...${NC}"

g++ multBenchmark.cpp -O3 -isystem benchmark/include -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -Lbenchmark/build/src -lbenchmark -lpthread -o multBenchmark

echo -e "${GREEN}Compiling completed${NC}"