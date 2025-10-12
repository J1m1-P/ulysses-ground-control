import QtQuick

Rectangle {
    // anchors.top: subheader_acc.bottom
    anchors.left: parent.left
    // width: panel_IMU.width;

    property int size
    property int boxHeight: 50
    property list<string> dataNames
    property list<double> dataValues



    Repeater {
        model: size
        DataBox {
            required property int index
            dataName: dataNames[index]
            dataValue: dataValues[index]
            sections: size
            section_num: index+1
            height: boxHeight
        }
    }

}
