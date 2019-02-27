FetchContent_GetProperties(imgui-sfml)

if(NOT imgui-sfml_POPULATED)
  message(STATUS "Fetching ImGui-SFML v${IMGUI_SFML_VERSION}")

  FetchContent_Populate(imgui-sfml)

  # Fetch SFML if needed
  FetchContent_GetProperties(SFML)
  if (NOT sfml_POPULATED)
    FetchContent_Populate(SFML)
  endif()

  # Fetch ImGui if needed
  FetchContent_GetProperties(imgui)
  if (NOT imgui_POPULATED)
    FetchContent_Populate(imgui)
  endif()

  # Set relevant vars
  set(IMGUI_DIR ${imgui_SOURCE_DIR})
  set(IMGUI_SFML_FIND_SFML CACHE BOOL FALSE)

  add_subdirectory(${imgui-sfml_SOURCE_DIR} ${imgui-sfml_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()
