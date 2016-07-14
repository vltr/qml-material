TEMPLATE = app

QT += qml quick

!win32 {
    OPTIONS += roboto
}

DEFINES += MATERIAL_NO_PLUGIN MATERIAL_DISABLE_AUTO_QML_REGISTER

include($$PWD/../material.pri)

SOURCES += $$PWD/main.cpp
RESOURCES += $$PWD/demo.qrc \
             $$PWD/icons/icons.qrc

win32 {
    CONFIG += windows
    DEFINES += WIN32 _WINDOWS _MBCS _CRT_SECURE_NO_WARNINGS
}

