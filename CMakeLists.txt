cmake_minimum_required(VERSION 3.10)
project(MatrixMult)

set(CMAKE_CXX_STANDARD 17)

execute_process(
    COMMAND getconf LEVEL1_DCACHE_LINESIZE
    OUTPUT_VARIABLE CACHE_LINE_SIZE
    OUTPUT_STRIP_TRAILING_WHITESPACE
)


find_package(benchmark REQUIRED)

# Set common compilation flags
set(COMMON_FLAGS -O3 -march=native -DCLS=${CACHE_LINE_SIZE})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall --std=c++11 -O3 -fPIC")

# Dummy executable targets (replace with your actual targets)
add_executable(benchmarkMult multBenchmark.cpp)
target_compile_options(benchmarkMult PRIVATE ${COMMON_FLAGS} -DloopImpl=0)
target_link_libraries(benchmarkMult PRIVATE benchmark::benchmark)

foreach(arg IN ITEMS "defaultImpl" "cacheBlocks" "vectorized" "withTranspose")
     message("Building variant: ${arg}")
     add_executable(${arg} diffCode.cpp)
     target_compile_options(${arg}  PRIVATE -g ${COMMON_FLAGS} -DIMPLEMENTATION=cacheBlocks)
endforeach()

# Set compiler flags for withoutLoops target

# Set compiler flags for multBenchmark target




# Add custom target to display compilation completion message
add_custom_target(compilation_complete
    COMMAND ${CMAKE_COMMAND} -E echo "Compilation completed"
    COMMAND ${CMAKE_COMMAND} -E echo "Running additional compilation steps..."
    COMMAND g++ --version
    COMMAND g++ -g ${COMMON_FLAGS} -S -DloopImpl=1 ${CMAKE_CURRENT_SOURCE_DIR}/diffCode.cpp -o ${CMAKE_BINARY_DIR}/withLoops.s
    COMMAND g++ -g ${COMMON_FLAGS} -S -DloopImpl=0 ${CMAKE_CURRENT_SOURCE_DIR}/diffCode.cpp -o ${CMAKE_BINARY_DIR}/withoutLoops.s
    COMMAND ${CMAKE_COMMAND} -E echo "Additional compilation steps completed"
    DEPENDS withLoops withoutLoops multBenchmark
    COMMENT "Compiling with and without loops, and multBenchmark"
)

# Dummy target for convenience during development
add_custom_target(run_all
    COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target compilation_complete
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    COMMENT "Build and run all targets"
)
