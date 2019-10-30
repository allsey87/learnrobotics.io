set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR wasm)

find_program(CMAKE_CXX_COMPILER
   NAMES em++
   PATHS /usr/lib/emscripten ENV PATH)

if(NOT CMAKE_CXX_COMPILER)
   message(FATAL_ERROR "Could not find the Emcripten compiler")
endif(NOT CMAKE_CXX_COMPILER)

find_program(NODEJS_RUNTIME
   NAMES node
   DOC "Node.js interpreter")

if(NOT NODEJS_RUNTIME)
   message(FATAL_ERROR "Could not find the Node.js runtime")
endif(NOT NODEJS_RUNTIME)

