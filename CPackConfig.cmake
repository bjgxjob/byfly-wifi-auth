# This file is part of byfly-wifi-auth. For the copyright and license information, please view the LICENSE file that was distributed with this source code.

set ( CPACK_PACKAGE_NAME "${PROJECT_NAME}" )
set ( CPACK_PACKAGE_DESCRIPTION_SUMMARY "byfly wifi auth" )
set ( CPACK_PACKAGE_VERSION ${BWA_VERSION} )
set ( CPACK_RESOURCE_FILE_LICENSE "${PROJECT_SOURCE_DIR}/LICENSE" )
set ( CPACK_RESOURCE_FILE_README  "${PROJECT_SOURCE_DIR}/README.rst" )

set ( CPACK_GENERATOR "DEB" "RPM" )

if ( DEFINED CMAKE_SYSTEM_PROCESSOR AND NOT "${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "" )
    set ( CPACK_DEBIAN_PACKAGE_ARCHITECTURE "${CMAKE_SYSTEM_PROCESSOR}" )
else ()
    set ( CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64" )
endif ()
set ( CPACK_DEBIAN_PACKAGE_MAINTAINER "Andrew Aladjev <aladjev.andrew@gmail.com>" )
set ( CPACK_DEBIAN_PACKAGE_DEPENDS "libcurl (>= 7.40.0)" )

set ( CPACK_RPM_PACKAGE_REQUIRES "libcurl >= 7.40.0" )

set ( CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}.${CPACK_DEBIAN_PACKAGE_ARCHITECTURE}" )
set ( CPACK_STRIP_FILES false )
