import QtQuick 2.4

Item {
    RoundButton {

        //Data
        text: "Start"
        textSize: 30
        textColor: "white"
        backgroundColor: "red"

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -40

        onClicked: showMainScreen()
    }

    CButton {
        id: settingsButton

        //Data
        text: "Settings"
        textSize: 18
        textColor: "white"
        backgroundColor: "black"

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 60

        onClicked: showSettingsScreen()
    }

    CButton {
        id: aboutButton

        //Data
        text: "About"
        textSize: 18
        textColor: "white"
        backgroundColor: "black"

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 120

        onClicked: showAboutScreen()
    }
}
