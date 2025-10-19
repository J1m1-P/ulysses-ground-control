import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


ApplicationWindow {
    //Initializing the Window
    id: window
    width: 1400
    height: 900
    visible: true
    title: qsTr("Ulysses Ground Control UI")
    color: "#111827"

    //Import all the keyboard shortcuts
    Shortcuts {
        targetWindow: window        //Passing in arguments
    }

    Header {
        id: headerMain
    }

    Rectangle {
        //Initialize the actual content board
        id: contentBoard

        width: parent.width - 4
        height: parent.height - (headerMain.height) - 4
        color: "#111827"
        anchors {
            top: headerMain.bottom
            horizontalCenter: parent.horizontalCenter
        }


        // Initialize the layout
        LayoutGrid {
        }
    }
}
