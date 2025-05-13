import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#191970"

        Column {
            id: container
            anchors.fill: parent
            anchors.topMargin: 30

            Text {
                id: title
                text: "Selecione a estrutura de dados que deseja"
                font {
                    pixelSize: 25
                    bold: true
                }
                color: "#C0C0C0"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            OptionsList {
                id: optionList
                height: parent.height * 0.7
                width: parent.width * 0.7
                anchors.centerIn: parent
            }
        }
    }

    Component.onCompleted: {
        optionList.setOptions( ["Pilha", "Fila"] )
    }
}
