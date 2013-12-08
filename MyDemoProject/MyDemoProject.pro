# Add more folders to ship with the application, here
folder_01.source = qml/MyDemoProject
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    qmldebugger.cpp

HEADERS += \
    qmldebugger.h

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()
