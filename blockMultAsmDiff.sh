#!/bin/bash

# Define the output directory
prefix="data/"

# Compile with loops
g++ -O3 -S -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=1 assemblyDiffCode.cpp -o ${prefix}withLoops.s
g++ -O3 -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=1 assemblyDiffCode.cpp
echo "Running cachegrind with loops..."
valgrind --tool=cachegrind --cachegrind-out-file=${prefix}cachegrind_with_loops.out ./a.out > /dev/null 2>&1
cg_annotate ${prefix}cachegrind_with_loops.out > ${prefix}cachegrind_with_loops_annotated.txt

# Compile without loops
g++ -O3 -S -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=0 assemblyDiffCode.cpp -o ${prefix}withoutLoops.s
g++ -O3 -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=0 assemblyDiffCode.cpp
echo "Running cachegrind without loops..."
valgrind --tool=cachegrind --cachegrind-out-file=${prefix}cachegrind_without_loops.out ./a.out > /dev/null 2>&1
cg_annotate ${prefix}cachegrind_without_loops.out > ${prefix}cachegrind_without_loops_annotated.txt

# Generate cache difference
cg_diff ${prefix}cachegrind_with_loops.out ${prefix}cachegrind_without_loops.out > ${prefix}diff.out
cg_annotate ${prefix}diff.out > ${prefix}diff_annotated.txt

# Compare assembly differences
diff ${prefix}withLoops.s ${prefix}withoutLoops.s > ${prefix}diff.s

echo "Script execution completed. Check the 'data' directory for the results."
