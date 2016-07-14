CONFIG += c++11
QT += qml quick

android {
    QT += androidextras svg xml
}

HEADERS += $$PWD/src/core/device.h \
           $$PWD/src/core/units.h

SOURCES += $$PWD/src/core/device.cpp \
           $$PWD/src/core/units.cpp \


RESOURCES += $$PWD/src/material.qrc \
             $$PWD/src/components/components.qrc \
             $$PWD/src/controls/controls.qrc \
             $$PWD/src/core/core.qrc \
             $$PWD/src/extras/extras.qrc \
             $$PWD/src/listitems/listitems.qrc \
             $$PWD/src/popups/popups.qrc \
             $$PWD/src/styles/styles.qrc \
             $$PWD/src/window/window.qrc \
             $$PWD/icons/core_icons.qrc

OTHER_FILES = $$PWD/README.md $$PWD/CHANGELOG.md

contains(OPTIONS, roboto) {
    RESOURCES += $$PWD/fonts/fonts.qrc
}

contains(DEFINES, MATERIAL_NO_PLUGIN) {
    INCLUDEPATH += $$PWD/src
    HEADERS += $$PWD/src/loader.h
    SOURCES += $$PWD/src/loader.cpp
} else {
    HEADERS += $$PWD/src/plugin.h
    SOURCES += $$PWD/src/plugin.cpp
}
