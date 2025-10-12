import QtQuick
import "Items"

BasePanel {
    id: panel_Baro

    //Parameters
    property double pressure
    property double altitude

    BaseHeader {
        id:header
        headerText: "Barometric Data"
    }

    Rectangle {

        id: pressure_and_altitude
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: header.height
        anchors.leftMargin: header.anchors.leftMargin
        height: 200

        DataBoxList {
            anchors.top: pressure_and_altitude.top
            width: panel_Baro.width;

            size: 2
            boxHeight: 70
            dataNames: ["PRESSURE (hPa)", "ALTITUDE (m)"]
            dataValues: [pressure, altitude]
        }
    }
}
