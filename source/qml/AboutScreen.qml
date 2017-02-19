import QtQuick 2.4

Item {
    Text {
        id: descr

        color: "black"
        font.pixelSize: 24

        width: 200

        text: "Use this app to remove negative effects after using microwave oven"
        wrapMode: Text.WordWrap

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.top
        anchors.verticalCenterOffset: 100
    }

    CButton {
        id: backButton

        //Data
        text: "Back"
        textSize: 18
        textColor: "white"
        backgroundColor: "black"

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 60

        onClicked: showStartScreen()
    }
}
