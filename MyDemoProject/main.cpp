#include <QtGui/QGuiApplication>
#include <QtQml>
#include "qtquick2applicationviewer.h"

#include "qmldebugger.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<QMLDebugger>("MyDemoLibrary", 1, 0, "QMLDebugger");

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/MyDemoProject/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
