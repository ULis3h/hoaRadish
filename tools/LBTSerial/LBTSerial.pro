QT       += core gui
QT       += serialport
QT += widgets printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    3dparty/qcustomplot/qcustomplot.cpp \
    HConvert.cpp \
    HCrc.cpp \
    HtabWidget.cpp \
    hserial.cpp \
    main.cpp \
    mainwindow.cpp
INCLUDEPATH += 3dparty/qcustomplot/
HEADERS += \
    3dparty/qcustomplot/qcustomplot.h \
    HConvert.h \
    HCrc.h \
    HtabWidget.h \
    hserial.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# set language as zh_CN
TRANSLATIONS += demo2_zh_CN.ts

DISTFILES += \
    img/open_off.svg \
    img/open_on.svg
RESOURCES += \
    Resource/img.qrc
