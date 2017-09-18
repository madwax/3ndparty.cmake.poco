cmake_minimum_required( VERSION 3.4.0 )

project( poco C CXX )

set( poco_SOURCE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/pocp" )
set( poco_BINARY_PATH "${CMAKE_CURRENT_BINARY_DIR}" )

set( poco_COMPILER_DEFINED 
	POCO_DISABLE_CPP14
	POCO_STATIC
	POCO_NO_AUTOMATIC_LIBS
)

include( cmake/Foundation.cmake )

