#!/bin/bash

prefix="data/"

if [[ $1 == "-c" ]]; then
    pushd build
    cmake --build .
    popd
fi

bin_dir=$(find . -type f -name $1 -o -name $2 -exec dirname {} \; | head -n 1)

# Check if binaries are found
if [ -z "$bin_dir" ]; then
    echo "Error: Could not find the directory with 'withLoops' or 'withoutLoops' binaries."
    exit 1
fi

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

repeats=50

echo -e "${PURPLE}Running perf stat $1...${NC}"
perf stat -d -r ${repeats} -o ${prefix}perf_$1.txt ${bin_dir}/$1 > /dev/null


echo -e "${PURPLE}Running perf stat $2...${NC}"
perf stat -d -r ${repeats} -o ${prefix}perf_$2.txt ${bin_dir}/$2 > /dev/null

# Generate cache difference
echo -e "${PURPLE}Generating cache difference...${NC}"
diff -y --width=250 ${prefix}perf_$1.txt ${prefix}perf_$2.txt

echo -e "${GREEN}Script execution completed. Check the 'data' directory for the results.${NC}"
