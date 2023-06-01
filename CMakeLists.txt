cmake_minimum_required(VERSION 3.16)

project(MediaPlayerUnsupportedVideoFilesDemo VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick Multimedia)

qt_standard_project_setup()
set(SOURCES main.cpp)
qt_add_resources(SOURCES resources.qrc)
qt_add_executable(appMediaPlayerUnsupportedVideoFilesDemo
    main.cpp
    ${SOURCES}
)

qt_add_qml_module(appMediaPlayerUnsupportedVideoFilesDemo
    URI MediaPlayerUnsupportedVideoFilesDemo
    VERSION 1.0
    QML_FILES Main.qml
)

set_target_properties(appMediaPlayerUnsupportedVideoFilesDemo PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMediaPlayerUnsupportedVideoFilesDemo
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Multimedia
)

install(TARGETS appMediaPlayerUnsupportedVideoFilesDemo
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
