import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    function setOptions(opcoes) {
        opcoesModel = opcoes
    }

    property var opcoesModel: []

    Rectangle {
        id: background
        color: "#4F4F4F"
        radius: 8
        anchors.fill: parent

        Column {
            id: container
            anchors.fill: parent
            spacing: 20
            anchors.topMargin: 15

            Repeater {
               model: opcoesModel

               ButtonCustom {
                   height: 70
                   width:  parent.width * 0.9
                   _pixelSize: parent.height * 0.05
                   anchors.horizontalCenter: parent.horizontalCenter
                   _text: modelData
               }
           }
        }
    }
}
