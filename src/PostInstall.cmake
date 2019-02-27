# Remove stuff from dependencies installs which we don't need
include(GNUInstallDirs)
execute_process(COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR})
