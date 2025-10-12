import QtQuick
import "Items"

BasePanel {
    id: panel_Kalman

    //Parameters
    property double raw_angle
    property double filtered_angle

    BaseHeader {
        id:header
        headerText: "Kalman Filtered Data"
    }

    Rectangle {
        id: angles
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: header.height
        anchors.leftMargin: header.anchors.leftMargin
        height: 200

        Text {
            id: subheader_angles
            text: "Angles (deg)"
            font.pixelSize: 18
            color: "#D1D5DB"
            height: 40
            y: 0
        }

        DataBoxList {
            anchors.top: subheader_angles.bottom
            width: panel_Kalman.width;

            size: 2
            dataNames: ["RAW ANGLE", "FILTERED ANGLE"]
            dataValues: [raw_angle, filtered_angle]
        }
    }
}
