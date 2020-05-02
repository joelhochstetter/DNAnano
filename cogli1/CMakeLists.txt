CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

OPTION(Debug "Set to ON to compile with debug symbols" OFF)
OPTION(G "Set to ON to compile with optimisations and debug symbols" OFF)
OPTION(oxDNAPath "Path to oxDNA" OFF)
OPTION(LR_TETRA "Enable povray output for DNA tetramers" OFF)
OPTION(oxDNA_anisotropic "Should we link to an anistropic-box-enabled oxDNA?" OFF)
OPTION(NOPNG "" OFF)

PROJECT(cogli1)

# The default behaviour is to compile with optimisations
SET(CMAKE_BUILD_TYPE Release)

IF(Debug)
	SET(CMAKE_BUILD_TYPE Debug)
	MESSAGE(STATUS "Compiling in Debug mode")
ENDIF(Debug)

IF(G)
	SET(CMAKE_BUILD_TYPE RelWithDebInfo)
	MESSAGE(STATUS "Compiling in Release+Debug symbols mode")
ENDIF(G)

IF(LR_TETRA)
	ADD_DEFINITIONS(-DLR_TETRA)
ENDIF(LR_TETRA)

ADD_DEFINITIONS(-Wall)

IF(NOT CMAKE_BUILD_TYPE MATCHES Debug)
	IF(INTEL)
		ADD_DEFINITIONS(-fast)
	ELSE()
		ADD_DEFINITIONS(-ffast-math)
	ENDIF(INTEL)
ENDIF()

# get the current svn version, if svn is installed. Avoid warnings if it isn't
FIND_PACKAGE(Subversion)
IF(Subversion_FOUND)
	EXECUTE_PROCESS(COMMAND "svnversion" WORKING_DIRECTORY ${PROJECT_SOURCE_DIR} OUTPUT_VARIABLE revision OUTPUT_STRIP_TRAILING_WHITESPACE)
ELSE()
	SET(revision SVN_NOT_FOUND)
ENDIF()

# return the current date as day/month/year
MACRO(CURRENT_DATE result)
    IF(WIN32)
        EXECUTE_PROCESS(COMMAND "cmd" " /C date /T" OUTPUT_VARIABLE ${result})
        string(REGEX REPLACE "(..)/(..)/..(..).*" "\\1/\\2/\\3" ${result} ${${result}})
    ELSEIF(UNIX)
        EXECUTE_PROCESS(COMMAND "date" "+%d/%m/%Y" OUTPUT_VARIABLE ${result})
        string(REGEX REPLACE "(..)/(..)/..(..).*" "\\1/\\2/\\3" ${result} ${${result}})
    ELSE(WIN32)
        MESSAGE(SEND_ERROR "date not implemented")
        SET(${result} 000000)
    ENDIF (WIN32)
ENDMACRO(CURRENT_DATE)

CURRENT_DATE(today)
ADD_DEFINITIONS(-D'SVN_VERSION="${revision}"' -D'BUILD_TIME="${today}"')

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

# BSpline lib
add_subdirectory(Utils/BSpline)

# GLFW
add_subdirectory(glfw)
include_directories(glfw/include)

# GLEW
add_definitions(-DGLEW_NO_GLU)
include_directories(glew/include)

# BEGIN TO COMPILE STUFF
IF(CMAKE_BUILD_TYPE MATCHES Debug)
	SET(exe_name cogli1_debug)
ELSE()
	SET(exe_name cogli1)
ENDIF()

SET(cogli1_SOURCES
	Drawables/Drawable.cpp
	Drawables/Scene.cpp
	Drawables/Cylinder.cpp
	Drawables/Arrow.cpp
	Drawables/Sphere.cpp
	Drawables/DNA.cpp
	Drawables/DHS.cpp
	Drawables/PatchyParticle.cpp
	Drawables/Shape.cpp
	Drawables/Triangle.cpp
	Drawables/Group.cpp
	Drawers/Drawer.cpp
	Drawers/OGLDrawer.cpp
	Drawers/PovDrawer.cpp
	Parsers/Parser.cpp
	Parsers/MGLParser.cpp
	Parsers/DNAParser.cpp
	Parsers/ManfredoParser.cpp
	Parsers/NathanParser.cpp
	Parsers/PatchyParser.cpp
	Parsers/StarrParser.cpp
	Parsers/RBCParser.cpp
	Parsers/LevyParser.cpp
	Parsers/TEPParser.cpp
	Parsers/IoxDNAParser.cpp
	Utils/StringHelper.cpp
	Utils/Logging.cpp
	Utils/MathHelper.cpp
	glew/glew.c
	OGL/OGLManager.cpp
	OGL/Shapes/OGLSphere.cpp
	OGL/Shapes/OGLEllipsoid.cpp
	OGL/Shapes/OGLCylinder.cpp
	OGL/Shapes/OGLCone.cpp
	OGL/Shapes/OGLArrow.cpp
	Actions/ActionBuilder.cpp
	Actions/BaseAction.cpp
	Actions/Rotation.cpp
	Actions/Translation.cpp
	povray/PovManager.cpp
	povray/DNARibbon.cpp
	Camera.cpp
	Lighting.cpp
	Cogli1.cpp
	main.cpp
)

IF(oxDNAPath)
	# add the files required to integrate the two oxDNA
	SET(oxDNA_integration
		oxDNA/Cogli1Manager.cpp
		oxDNA/BackendWrapper.cpp
	)
	
	ADD_EXECUTABLE(${exe_name} ${cogli1_SOURCES} ${oxDNA_integration})
ELSE()
	ADD_EXECUTABLE(${exe_name} ${cogli1_SOURCES})
ENDIF()

# oxDNA (optional)
IF(oxDNAPath)
	# we need cmake 2.8 to use ExternalProject
	CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
	
	INCLUDE(ExternalProject)

	MESSAGE(STATUS "Compiling with oxDNA support enabled")
	
	EXTERNALPROJECT_ADD(oxDNA
		SOURCE_DIR ${oxDNAPath}
		BINARY_DIR oxDNA
		INSTALL_COMMAND ""
	)
	
	# add the libcommon.a library
	ADD_LIBRARY(oxDNA_common STATIC IMPORTED)
	SET_PROPERTY(TARGET oxDNA_common PROPERTY IMPORTED_LOCATION oxDNA/src/libcommon.a)
	
	# we want to have oxDNA's source tree in the path
	INCLUDE_DIRECTORIES(${oxDNAPath}/src)
	
	# we can use the OXDNA macro to check whether we will compile with or without oxDNA support
	ADD_DEFINITIONS(-DOXDNA)
	
	IF(oxDNA_anisotropic)
		ADD_DEFINITIONS(-DANISOTROPIC_BOX)
	ENDIF(oxDNA_anisotropic)
	
	# add it as a dependence to cogli1
	ADD_DEPENDENCIES(${exe_name} oxDNA)
	TARGET_LINK_LIBRARIES(${exe_name} glfw ${GLFW_LIBRARIES} oxDNA_common BSpline dl)
ELSE()
	TARGET_LINK_LIBRARIES(${exe_name} glfw ${GLFW_LIBRARIES} BSpline)
ENDIF(oxDNAPath)

# if libpng is installed then we enable exporting in png format
FIND_PACKAGE(PNG)
IF(PNG_FOUND AND NOT NOPNG)
	ADD_DEFINITIONS(-DENABLE_PNG_EXPORT)
	MESSAGE(STATUS "Compiling with libpng support enabled")
	
	TARGET_LINK_LIBRARIES(${exe_name} ${PNG_LIBRARY})
ELSE()
	MESSAGE(STATUS "Compiling with no libpng support")
ENDIF()