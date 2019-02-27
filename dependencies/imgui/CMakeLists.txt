FetchContent_GetProperties(imgui)
if(NOT imgui_POPULATED)
  message(STATUS "Fetching ImGui v${IMGUI_VERSION}")

  FetchContent_Populate(imgui)
endif()
