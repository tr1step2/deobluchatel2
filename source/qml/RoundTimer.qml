import QtQuick 2.0

Item {
    id: item

    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCentera


    function processTimer (quarter) {
        //pickerValue is global var

        pickerValue += 1
        if (pickerValue == 12)
            pickerValue = 0;

        timerText.text = pickerValue
        picker.rotation += 30
    }

    Text {
        id: timerText

        text: "0"

        font.pointSize: 30
        font.bold: true
        color: "white"

        anchors.horizontalCenter: item.horizontalCenter
        anchors.verticalCenter: item.verticalCenter

        z: 1
    }

    Image {
        id: picker
        source: "Picker.png"

        height: 120
        width: 120

        anchors.horizontalCenter: item.horizontalCenter
        anchors.verticalCenter: item.verticalCenter

        z: 0

        MouseArea {
            anchors.fill: parent
            onClicked: item.processTimer(1)
        }
    }

    CButton {
        id: okButton

        //Data
        text: "set timer"
        textSize: 18
        textColor: "white"
        backgroundColor: "black"
        width: 50

        //Position
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 100

        onClicked: showStartScreen()
    }


    //set of dashes

}
