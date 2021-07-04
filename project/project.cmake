cmake_minimum_required(VERSION "{{version}}")

project("{{Project.name}}"
	VERSION {{Project.version}}
	DESCRIPTION "{{Project.description}}"
	HOMEPAGE_URL "{{Project.url}}"
	LANGUAGES {{Project.languages}}
	)
add_executable(${PROJECT_NAME} main.cpp)
