cmake_minimum_required( VERSION 3.4.0 )

project( poco.foundation )

set( TARGET_SOURCE_DIR_TRUE "${poco_SOURCE_PATH}/Foundation" )
set( TARGET_INCLUDE_DIR "${TARGET_SOURCE_DIR_TRUE}/include" )
set( TARGET_INCLUDE_DIRS ${TARGET_INCLUDE_DIR}  )
set( TARGET_INCLUDE_DIRS_PRIVATE "${TARGET_SOURCE_DIR_TRUE}/src" )

set( TARGET_DEFINES "" )
set( TARGET_DEFINES_PRIVATE "${OpenSSL_COMPILER_DEFINES}" )

set( TARGET_COMPILE_FLAGS "" )
set( TARGET_COMPILE_FLAGS_PRIVATE "" )

set( TARGET_LINK "" )
set( TARGET_LINK_PRIVATE "" )

set( TARGET_SOURCES "" )

add_library( poco.foundation STATIC ${TARGET_SOURCES} )

target_include_directories( poco.foundation PRIVATE ${TARGET_INCLUDE_DIRS} ${TARGET_INCLUDE_DIRS_PRIVATE} )
target_compile_definitions( poco.foundation PRIVATE ${TARGET_DEFINES} ${TARGET_DEFINES_PRIVATE} )
target_link_libraries( poco.foundation PRIVATE ${TARGET_LINK} ${TARGET_LINK_PRIVATE} )
target_compile_options( poco.foundation PRIVATE ${TARGET_COMPILE_FLAGS} ${TARGET_COMPILE_FLAGS_PRIVATE} )

target_include_directories( poco.foundation PUBLIC $<BUILD_INTERFACE:${TARGET_INCLUDE_DIR}> )
target_compile_definitions( poco.foundation PUBLIC ${TARGET_DEFINES} )
target_link_libraries( poco.foundation PUBLIC ${TARGET_LINK} )
target_compile_options( poco.foundation PUBLIC ${TARGET_COMPILE_FLAGS} )