cmake_minimum_required(VERSION "{{version}}")

project("{{Project.name}}"
	VERSION {{Project.version}}
	DESCRIPTION "{{Project.description}}"
	HOMEPAGE_URL "{{Project.url}}"
	LANGUAGES {{Project.languages}}
	)
add_executable(${PROJECT_NAME} ../main.cpp)
find_package(HDF5 COMPONENTS C CXX)
set(HDF5_USE_STATIC_LIBRARIES ON)
target_link_libraries(${PROJECT_NAME} PUBLIC  ${HDF5_CXX_LIBRARIES} ${HDF5_LIBRARIES})
