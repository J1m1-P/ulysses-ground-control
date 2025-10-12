import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Items"

BasePanel {
    id: panel_Telemetry

    //Parameters
    property double velocity
    property double altitude
    property double temperature
    property double signals
    property double battery

    BaseHeader {
        id:header
        headerText: "Telemetry Data"
    }

    Rectangle {
        id: velocity_and_altitude
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: header.height
        anchors.leftMargin: header.anchors.leftMargin
        height: 200

        DataBoxList {
            anchors.top: velocity_and_altitude.top
            width: panel_Telemetry.width

            size: 2
            dataNames: ["VELOCITY (km/h)", "ALTITUDE (m)"]
            dataValues: [velocity, altitude]
        }
    }


    Rectangle {
        id: temp_signal_battery
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: header.height + velocity_and_altitude.height
        anchors.leftMargin: header.anchors.leftMargin
        height: 200

        DataBoxList {
            anchors.top: temp_signal_battery.top
            width: panel_Telemetry.width;

            size: 3
            dataNames: ["TEMP (C)", "SIGNAL (%)", "BATTERY (%)"]
            dataValues: [temperature, signals, battery]
        }
    }
}
