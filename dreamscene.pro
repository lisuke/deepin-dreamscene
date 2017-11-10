TEMPLATE = app

QT += gui x11extras widgets dbus
CONFIG += c++11 link_pkgconfig
PKGCONFIG += xcb-ewmh dtkwidget mpv
TARGET = dde-wallpaper

SOURCES += main.cpp \
    wallpaper.cpp \
    dbuswallpaperservice.cpp \
    wallpapermask.cpp \
    mpvwidget.cpp \
    settings.cpp

HEADERS += \
    wallpaper.h \
    dbuswallpaperservice.h \
    wallpapermask.h \
    mpvwidget.h \
    settings.h

RESOURCES +=

target.path = /usr/bin/

DISTFILES += \
    com.deepin.dde.Wallpaper.service

dbus_service.files += com.deepin.dde.Wallpaper.service
dbus_service.path = /usr/share/dbus-1/services

INSTALLS += target dbus_service
