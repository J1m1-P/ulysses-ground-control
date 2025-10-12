import QtQuick

Rectangle {
    //Initializing the Header
    id: header

    height: 70
    color: "#111827"
    anchors {
        top: parent.top
        left: parent.left
        right: parent.right
    }

    Text {
        id: title

        //Position
        anchors.left: parent.left
        y: parent.height/14
        anchors.leftMargin: 20

        //Text
        text: "Rocket Ground Control"
        font.pixelSize: 24
        font.bold: true
        color: "#4a90e2"
    }

    Text {
        id: subtitle

        //Position
        anchors.left: title.left
        y: title.y + title.height
        anchors.leftMargin: title.leftMargin

        //Text
        text: "Ulysses"
        font.pixelSize: 18
        color: "#8892b0"
    }

    Rectangle {
        id: line

        anchors.bottom: parent.bottom
        color: "#16213e"
        width: parent.width
        height: 2

    }
}
