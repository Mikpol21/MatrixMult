#!/bin/bash

prefix="data/"

if [[ $1 == "-c" ]]; then
    bash compile_diff_code.sh
fi

PURPLE='\033[0;35m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

repeats=100

echo -e "${PURPLE}Running perf stat with loops...${NC}"
perf stat -d -r ${repeats} -o ${prefix}perf_with_loops.txt ./withLoops > /dev/null


echo -e "${PURPLE}Running perf stat without loops...${NC}"
perf stat -d -r ${repeats} -o ${prefix}perf_without_loops.txt ./withoutLoops > /dev/null

# Generate cache difference
echo -e "${PURPLE}Generating cache difference...${NC}"
diff -y --width=250 data/perf_with_loops.txt data/perf_without_loops.txt

echo -e "${GREEN}Script execution completed. Check the 'data' directory for the results.${NC}"
