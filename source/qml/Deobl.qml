import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {

    id: mainRect

    width: 240
    height: 400
    color: "lightblue"

    property int radioSize: 20
    property int pickerValue: 0

    function showMainScreen() {
        //TODO: implement animation of changing screen

        if (mainScreen.visible == false) {
            mainScreen.visible = true

            startScreen.visible = false
            settingsScreen.visible = false
            aboutScreeen.visible = false

            mainScreen.start()
        }
    }

    function showStartScreen() {
        if (startScreen.visible == false) {
            startScreen.visible = true

            mainScreen.visible = false
            settingsScreen.visible = false
            aboutScreeen.visible = false
        }
    }

    function showSettingsScreen() {
        if (settingsScreen.visible == false) {
            settingsScreen.visible = true

            mainScreen.visible = false
            startScreen.visible = false
            aboutScreeen.visible = false
        }
    }

    function showAboutScreen() {
        if (aboutScreeen.visible == false) {
            aboutScreeen.visible = true

            mainScreen.visible = false
            startScreen.visible = false
            settingsScreen.visible = false
        }
    }

    StartScreen {
        id: startScreen

        anchors.fill: parent
    }

    MainScreen {
        id: mainScreen

        anchors.fill: parent
        visible: false
    }

    SettingsScreen {
        id: settingsScreen

        anchors.fill: parent
        visible: false
    }

    AboutScreen {
        id: aboutScreeen

        anchors.fill: parent
        visible: false
    }
}
