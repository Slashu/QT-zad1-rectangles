import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rectangles")

    Rectangle {
        y:10
        id: rect1
        width: 100
        height: 100
        color: "red"
        radius: 10

        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked:{
                if (mouse.button === Qt.LeftButton){
                    if(Qt.colorEqual(rect2.color,"blue"))
                    {
                        rect2.color="green"
                    }
                    else{
                        rect2.color="blue"
                    }
                }
            }
        }
    }

    Rectangle {
        id: rect2
        y:110
        width: 100
        height: 100
        color: "blue"
        radius: 10

        MouseArea{
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton
            onClicked:{
                if (mouse.button === Qt.LeftButton){
                    if(Qt.colorEqual(rect1.color,"red"))
                    {
                        rect1.color="yellow"
                    }
                    else{
                        rect1.color="red"
                    }
                }
            }
        }
    }
}
