import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 800
    height: 640
    visible: true
    title: qsTr("Visual Basic Data Struct Operations")

    StackView {
        anchors.fill: parent
        initialItem: mainScreenComponent
    }

    Component {
        id: mainScreenComponent

        MainScreen {
            id: mainScreen
        }
    }


}
