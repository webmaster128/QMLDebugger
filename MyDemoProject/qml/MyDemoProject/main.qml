import QtQuick 2.0
import MyDemoLibrary 1.0

Rectangle {
    id: mainRectangle

    width: 360
    height: 360
    color: "silver"

    Text {
        id: textElement
        color: "#d71f1f"
        text: qsTr("Hello World")
        font.bold: true
        font.italic: true
        font.underline: true
        style: Text.Raised
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 16
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
    }

    QMLDebugger {
        id: qmlDebugger
    }

    Component.onCompleted: {
        console.log("Debug mainRectangle:");
        console.log(qmlDebugger.properties(mainRectangle));
        console.log("Debug textElement:");
        console.log(qmlDebugger.properties(textElement, false));
    }
}
