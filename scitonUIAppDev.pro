QT += network qml quick multimedia serialport
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

VERSION = 0.0.6
CONFIG += c++11
TEMPLATE = app
TARGET = scitonUIAppDev

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

TRANSLATIONS += \
    scitonUIAppDev_te_IN.ts

OTHER_FILES += \
    README.md

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =


#=========================== Installs ========================
#[Application-Contribution-Files]: Rule for deployment of Binary Files(see system architecture for additional information).
target.path = /application/bin
#message( "[Step-Deploy] : Deploying Binary Files" ) [To-Do: Add the check if deployment was sucessful and then write the message]
INSTALLS += target
