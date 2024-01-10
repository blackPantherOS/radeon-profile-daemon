#-------------------------------------------------
#
# Project created by QtCreator 2014-05-10T15:06:55
# Modified to Qt6 by Charles K Barcza - blackpanther.hu
#
#-------------------------------------------------

QT       += core network
QT       -= gui

TARGET = radeon-profile-daemon
CONFIG   += console
CONFIG   -= app_bundle

CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT

TEMPLATE = app

SOURCES += main.cpp \
    rpdthread.cpp

HEADERS += \
    rpdthread.h

DESTDIR= target

bin.path = /usr/bin
bin.files = target/radeon-profile-daemon

service.path = /usr/lib/systemd/system
service.files = extra/radeon-profile-daemon.service

INSTALLS += \
	bin \
	service
    