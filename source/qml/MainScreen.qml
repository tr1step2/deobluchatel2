import QtQuick 2.4
import QtQuick.Window 2.2

Item {
    anchors.fill: parent
    visible: false

    function start(caller) {
        mainAnimation.start()
    }

    function showDoneButton() {
        doneButton.visible = true
    }

    function onDoneClicked() {
        doneButton.visible = false
        showStartScreen()
    }

    CButton {
        id: doneButton

        visible: false

        //Data
        text: "Done"
        textSize: 44
        textColor: "white"
        backgroundColor: "green"
        onMouseOverColor: "green"

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 80

        onClicked: onDoneClicked()
    }

    Rectangle {
        id: blackRect

        width: 120
        height: 120
        radius: width * 0.5
        opacity: 0.9

        color: "black"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -40
    }

    Rectangle {
        id: redRect

        width: 110
        height: 110
        radius: width * 0.5

        color: "red"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -40
    }

    SequentialAnimation {
        id: mainAnimation

        loops: pickerValue == 0 ? 1 : pickerValue
        running: false

        ParallelAnimation {
            NumberAnimation { target: blackRect; easing.type: Easing.OutInSine; property: "width"; to: 200; duration: 800 }
            NumberAnimation { target: blackRect; easing.type: Easing.OutInSine; property: "height"; to: 200; duration: 800 }
        }

        ParallelAnimation {
            NumberAnimation { target: redRect; easing.type: Easing.OutInSine; property: "width"; to: 190; duration: 800 }
            NumberAnimation { target: redRect; easing.type: Easing.OutInSine; property: "height"; to: 190; duration: 800 }
        }

        ParallelAnimation {
            NumberAnimation { target: redRect; easing.type: Easing.OutInSine; property: "width"; to: 110; duration: 800 }
            NumberAnimation { target: redRect; easing.type: Easing.OutInSine; property: "height"; to: 110; duration: 800 }
        }

        ParallelAnimation {
            NumberAnimation { target: blackRect; easing.type: Easing.OutInSine; property: "width"; to: 120; duration: 800 }
            NumberAnimation { target: blackRect; easing.type: Easing.OutInSine; property: "height"; to: 120; duration: 800 }
        }

        onStopped: showDoneButton()
    }

}
