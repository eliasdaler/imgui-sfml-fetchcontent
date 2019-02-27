include(FetchContent)

option(USE_SYSTEM_DEPS CACHE OFF)
option(LINK_DEPS_STATIC CACHE ON)

# Don't build shared libs if we want to link to deps statically
if(LINK_DEPS_STATIC)
  set(BUILD_SHARED_LIBS OFF)
else()
  set(BUILD_SHARED_LIBS ON)
endif()

message(STATUS "Fetching third party libraries")
#======================================

set(SFML_VERSION 2.5.1)
set(IMGUI_VERSION 1.68)
set(IMGUI_SFML_VERSION 2.0)

# It's nice to get stripped-down release zips instead of cloning
# a repo and checking out a tag
FetchContent_Declare(
  SFML
  URL "https://github.com/SFML/SFML/archive/${SFML_VERSION}.zip"
)

FetchContent_Declare(
  imgui
  URL "https://github.com/ocornut/imgui/archive/v${IMGUI_VERSION}.zip"
)

# Or by tag...
FetchContent_Declare(
  imgui-sfml
  GIT_REPOSITORY https://github.com/eliasdaler/imgui-sfml.git
  GIT_TAG        develop
  # GIT_COMMIT 5f54b69b6aee18db846c81633f86f78c2586dded
  # ^ or like this - sometimes it's better because FetchContent won't look
  # into remote to see if branch head was updated or not - good for stable
  # tags like 'vX.X' corresponding to releases
)

add_subdirectory(sfml)
add_subdirectory(imgui)
add_subdirectory(imgui-sfml)

#======================================
message(STATUS "Fetching thirdparty libraries done")
