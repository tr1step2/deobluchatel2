import QtQuick 2.4

Item {

    Text {
        id: descr

        color: "black"
        font.pixelSize: 20

        width: 200

        text: "Set up similar value you set on microwave oven"
        wrapMode: Text.WordWrap

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.top
        anchors.verticalCenterOffset: 50
    }

    RoundTimer {
        id: roundTimer

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -40
    }
}
