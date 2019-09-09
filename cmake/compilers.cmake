set(OLDFLAGS -w)

if(CMAKE_Fortran_COMPILER_ID STREQUAL GNU)
  list(APPEND FFLAGS -mtune=native -Wall -Wextra -Wpedantic)
  if(CMAKE_BUILD_TYPE STREQUAL Debug)
    list(APPEND FFLAGS -ffpe-trap=invalid,zero,overflow)
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL Intel)
  if(WIN32)
    list(APPEND FFLAGS /warn)
    set(OLDFLAGS /nowarn)
  else()
    list(APPEND FFLAGS -warn)
    set(OLDFLAGS -nowarn)
  endif()
elseif(CMAKE_Fortran_COMPILER_ID STREQUAL PGI)

elseif(CMAKE_Fortran_COMPILER_ID STREQUAL Flang)

endif()
