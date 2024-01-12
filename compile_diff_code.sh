

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Compiling with and without loops...${NC}"

# Compile with loops
g++ -g -O3 -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=1 diffCode.cpp -o withLoops
# Compile without loops
g++ -g -O3 -DCLS=$(getconf LEVEL1_DCACHE_LINESIZE) -DloopImpl=0 diffCode.cpp -o withoutLoops

echo -e "${GREEN}Compiling completed${NC}"