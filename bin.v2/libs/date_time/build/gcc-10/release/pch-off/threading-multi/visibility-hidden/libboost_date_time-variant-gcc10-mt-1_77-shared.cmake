# Generated by Boost 1.77.0

# address-model=64

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
  _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "64 bit, need 32")
  return()
endif()

# layout=versioned

# toolset=gcc10

if(Boost_COMPILER)
  if(NOT Boost_COMPILER STREQUAL "gcc10" AND NOT Boost_COMPILER STREQUAL "-gcc10")
    _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "gcc10, Boost_COMPILER=${Boost_COMPILER}")
    return()
  endif()
else()
  if(BOOST_DETECTED_TOOLSET AND NOT BOOST_DETECTED_TOOLSET STREQUAL "gcc10")
    _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "gcc10, detected ${BOOST_DETECTED_TOOLSET}, set Boost_COMPILER to override")
    return()
  endif()
endif()

# link=shared

if(DEFINED Boost_USE_STATIC_LIBS)
  if(Boost_USE_STATIC_LIBS)
    _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "shared, Boost_USE_STATIC_LIBS=${Boost_USE_STATIC_LIBS}")
    return()
  endif()
else()
  if(WIN32 AND NOT _BOOST_SINGLE_VARIANT)
    _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "shared, default on Windows is static, set Boost_USE_STATIC_LIBS=OFF to override")
    return()
  endif()
endif()

# runtime-link=shared

if(Boost_USE_STATIC_RUNTIME)
  _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "shared runtime, Boost_USE_STATIC_RUNTIME=${Boost_USE_STATIC_RUNTIME}")
  return()
endif()

# runtime-debugging=off

if(Boost_USE_DEBUG_RUNTIME)
  _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "release runtime, Boost_USE_DEBUG_RUNTIME=${Boost_USE_DEBUG_RUNTIME}")
  return()
endif()

# threading=multi

if(DEFINED Boost_USE_MULTITHREADED AND NOT Boost_USE_MULTITHREADED)
  _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "multithreaded, Boost_USE_MULTITHREADED=${Boost_USE_MULTITHREADED}")
  return()
endif()

# variant=release

if(NOT "${Boost_USE_RELEASE_LIBS}" STREQUAL "" AND NOT Boost_USE_RELEASE_LIBS)
  _BOOST_SKIPPED("libboost_date_time-gcc10-mt-1_77.so.1.77.0" "release, Boost_USE_RELEASE_LIBS=${Boost_USE_RELEASE_LIBS}")
  return()
endif()

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "  [x] libboost_date_time-gcc10-mt-1_77.so.1.77.0")
endif()

# Create imported target Boost::date_time

if(NOT TARGET Boost::date_time)
  add_library(Boost::date_time SHARED IMPORTED)

  set_target_properties(Boost::date_time PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${_BOOST_INCLUDEDIR}"
    INTERFACE_COMPILE_DEFINITIONS "BOOST_ALL_NO_LIB"
  )
endif()

# Target file name: libboost_date_time-gcc10-mt-1_77.so.1.77.0

get_target_property(__boost_imploc Boost::date_time IMPORTED_LOCATION_RELEASE)
if(__boost_imploc)
  message(SEND_ERROR "Target Boost::date_time already has an imported location '${__boost_imploc}', which is being overwritten with '${_BOOST_LIBDIR}/libboost_date_time-gcc10-mt-1_77.so.1.77.0'")
endif()
unset(__boost_imploc)

set_property(TARGET Boost::date_time APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)

set_target_properties(Boost::date_time PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE CXX
  IMPORTED_LOCATION_RELEASE "${_BOOST_LIBDIR}/libboost_date_time-gcc10-mt-1_77.so.1.77.0"
  )

set_target_properties(Boost::date_time PROPERTIES
  MAP_IMPORTED_CONFIG_MINSIZEREL Release
  MAP_IMPORTED_CONFIG_RELWITHDEBINFO Release
  )

set_property(TARGET Boost::date_time APPEND
  PROPERTY INTERFACE_COMPILE_DEFINITIONS "BOOST_DATE_TIME_DYN_LINK"
  )

list(APPEND _BOOST_DATE_TIME_DEPS headers)
