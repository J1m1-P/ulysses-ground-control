import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Items"

BasePanel {
    id: panel_IMU

    //Parameters
    property double x_axis
    property double y_axis
    property double z_axis
    property double roll
    property double pitch
    property double yaw

    BaseHeader {
        id:header
        headerText: "IMU Data"
    }

    Rectangle {
        id: accelerometer

        height: 100
        anchors {
            top: parent.top
            left: parent.left
            topMargin: header.height
            leftMargin: header.anchors.leftMargin
        }

        Text {
            id: subheader_acc
            text: "Accelerometer (m/s^2)"
            font.pixelSize: 18
            color: "#D1D5DB"
            height: 40
            y: 0
        }

        DataBoxList {
            anchors.top: subheader_acc.bottom
            width: panel_IMU.width;

            size: 3
            dataNames: ["X-AXIS", "Y-AXIS", "Z-AXIS"]
            dataValues: [100,200,300]
        }
    }

    Rectangle {
        id: gyroscope

        anchors {
            top: accelerometer.bottom
            left: parent.left
            leftMargin: header.anchors.leftMargin
        }

        Text {
            id: subheader_gyro
            text: "Gyroscope (deg/s)"
            font.pixelSize: 18
            color: "#D1D5DB"
            height: 40
            y: 0
        }

        DataBoxList {
            anchors.top: subheader_gyro.bottom
            width: panel_IMU.width;

            size: 3
            dataNames: ["ROLL", "PITCH", "YAW"]
            dataValues: [1,2,3]
        }
    }
}
