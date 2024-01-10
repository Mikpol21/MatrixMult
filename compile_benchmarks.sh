#!/bin/bash

# Default compilation command
compile_command="g++ multBenchmark.cpp -O3 -isystem benchmark/include -DCLS=\$(getconf LEVEL1_DCACHE_LINESIZE) -Lbenchmark/build/src -lbenchmark -lpthread -o multBenchmark"

# Check if the -S flag is provided
if [[ "$1" == "-S" ]]; then
    # Generate assembly instead of compiling
    compile_command="g++ -S multBenchmark.cpp -O3 -isystem benchmark/include -DCLS=\$(getconf LEVEL1_DCACHE_LINESIZE)"
fi

# Execute the compilation command
eval "$compile_command"