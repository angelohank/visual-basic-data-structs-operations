import QtQuick 2.15

MouseArea {
    id: root

    property string pressedColor: "#A9A9A9"
    property string unpressedColor: "#FAF9F6"
    property string _text: ""
    property int _pixelSize: 16


    Rectangle {
        id: button

        anchors.fill: parent

        radius: 8
        color: unpressedColor

        Text {
            anchors.centerIn: parent
            text: _text
            font {
                pixelSize: _pixelSize
            }
        }
    }

    onContainsPressChanged: {
        button.color = root.containsPress ? pressedColor : unpressedColor
    }
}
