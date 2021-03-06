# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.


# Block multiple inclusion because "CMakeCInformation.cmake" includes
# "Platform/${CMAKE_SYSTEM_NAME}" even though the generic module
# "CMakeSystemSpecificInformation.cmake" already included it.
# The extra inclusion is a work-around documented next to the include()
# call, so this can be removed when the work-around is removed.
if(__UNIX_PATHS_INCLUDED)
  return()
endif()
set(__UNIX_PATHS_INCLUDED 1)

set(UNIX 1)

# also add the install directory of the running cmake to the search directories
# CMAKE_ROOT is CMAKE_INSTALL_PREFIX/share/cmake, so we need to go two levels up
get_filename_component(_CMAKE_INSTALL_DIR "${CMAKE_ROOT}" PATH)
get_filename_component(_CMAKE_INSTALL_DIR "${_CMAKE_INSTALL_DIR}" PATH)

# List common installation prefixes.  These will be used for all
# search types.
list(APPEND CMAKE_SYSTEM_PREFIX_PATH
  # Standard
  /usr/local /usr /

  # CMake install location
  "${_CMAKE_INSTALL_DIR}"
  )
if (NOT CMAKE_FIND_NO_INSTALL_PREFIX)
  list(APPEND CMAKE_SYSTEM_PREFIX_PATH
    # Project install destination.
    "${CMAKE_INSTALL_PREFIX}"
  )
  if(CMAKE_STAGING_PREFIX)
    list(APPEND CMAKE_SYSTEM_PREFIX_PATH
      # User-supplied staging prefix.
      "${CMAKE_STAGING_PREFIX}"
    )
  endif()
endif()

# Non "standard" but common install prefixes
list(APPEND CMAKE_SYSTEM_PREFIX_PATH
  /usr/X11R6
  /usr/pkg
  /opt
  )

# List common include file locations not under the common prefixes.
list(APPEND CMAKE_SYSTEM_INCLUDE_PATH
  /usr/include
  )

list(APPEND CMAKE_SYSTEM_LIBRARY_PATH
  /usr/aarch64-ares-linux-gnu/lib//gcc
  /usr/aarch64-ares-linux-gnu/lib/
  /usr/lib64
  /usr/libx32
  /usr/lib32
  /usr/lib
  /lib
  )

list(APPEND CMAKE_SYSTEM_PROGRAM_PATH
  /usr/bin
  /bin
  )

list(APPEND CMAKE_PLATFORM_IMPLICIT_LINK_DIRECTORIES
  /usr/aarch64-ares-linux-gnu/lib//gcc
  /usr/aarch64-ares-linux-gnu/lib/
  /usr/lib64
  /usr/libx32
  /usr/lib32
  /usr/lib
  /lib
  )

if(CMAKE_SYSROOT_COMPILE)
  set(_cmake_sysroot_compile "${CMAKE_SYSROOT_COMPILE}")
else()
  set(_cmake_sysroot_compile "${CMAKE_SYSROOT}")
endif()

# Default per-language values.  These may be later replaced after
# parsing the implicit directory information from compiler output.
set(_CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES_INIT
  ${CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES}
  /usr/include
  )
set(_CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES_INIT
  ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES}
  /usr/include
  )
set(_CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES_INIT
  ${CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES}
  "${_cmake_sysroot_compile}/usr/include"
  )

unset(_cmake_sysroot_compile)

# Enable use of lib32 and lib64 search path variants by default.
set_property(GLOBAL PROPERTY FIND_LIBRARY_USE_LIB32_PATHS TRUE)
set_property(GLOBAL PROPERTY FIND_LIBRARY_USE_LIB64_PATHS TRUE)
set_property(GLOBAL PROPERTY FIND_LIBRARY_USE_LIBX32_PATHS TRUE)
