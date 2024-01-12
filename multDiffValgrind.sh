#!/bin/bash

# Define the output directory
prefix="data/"
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [[ $1 == "-c" ]]; then
    pushd build
    cmake --build .
    popd
fi

bin_dir=$(find . -type f -name "withLoops" -o -name "withoutLoops" -exec dirname {} \; | head -n 1)

# Check if binaries are found
if [ -z "$bin_dir" ]; then
    echo "Error: Could not find the directory with 'withLoops' or 'withoutLoops' binaries."
    exit 1
fi


echo -e "${PURPLE}Running cachegrind with loops...${NC}"
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=${prefix}cachegrind_with_loops.out ${bin_dir}/withLoops
cg_annotate ${prefix}cachegrind_with_loops.out > ${prefix}cachegrind_with_loops_annotated.txt


echo -e "${PURPLE}Running cachegrind without loops...${NC}"
valgrind --tool=cachegrind --branch-sim=yes --cachegrind-out-file=${prefix}cachegrind_without_loops.out ${bin_dir}/withoutLoops
cg_annotate ${prefix}cachegrind_without_loops.out > ${prefix}cachegrind_without_loops_annotated.txt

# Generate cache difference
cg_diff ${prefix}cachegrind_with_loops.out ${prefix}cachegrind_without_loops.out > ${prefix}diff.out
cg_annotate ${prefix}diff.out > ${prefix}diff_annotated.txt


echo -e "${GREEN}Script execution completed. Check the 'data' directory for the results.${NC}"
