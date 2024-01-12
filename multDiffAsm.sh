prefix="data"

echo "Diffing assembly code..."

g++ --version

g++ -g -O3 -S -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=1 diffCode.cpp -o ${prefix}/withLoops.s
g++ -g -O3 -S -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=0 diffCode.cpp -o ${prefix}/withoutLoops.s
diff ${prefix}/withLoops.s ${prefix}/withoutLoops.s > ${prefix}/diff.s

echo "Done"