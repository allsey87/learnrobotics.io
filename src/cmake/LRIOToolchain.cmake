set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR wasm)

find_program(CMAKE_C_COMPILER
   NAMES emcc
   PATHS /usr/lib/emscripten ENV PATH)

find_program(CMAKE_CXX_COMPILER
   NAMES em++
   PATHS /usr/lib/emscripten ENV PATH)

