import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: main_root_window

    visible: true
    width: 1024
    height: 768
    title: qsTr("Hello World")

    //    ComboBox {
    //        currentIndex: 2
    //        model: ListModel {
    //            id: cbItems
    //            ListElement { text: "Banana"; color: "Yellow" }
    //            ListElement { text: "Apple"; color: "Green" }
    //            ListElement { text: "Coconut"; color: "Brown" }
    //        }
    //        width: 200
    //        onCurrentIndexChanged: console.debug(cbItems.get(currentIndex).text + ", " + cbItems.get(currentIndex).color)
    //    }

    ComboBox {
        width: 200
        model: [ "Banana", "Apple", "Coconut" ]
    }

    //    ComboBox {
    //        anchors.centerIn: parent
    //        editable: true
    //        model: ListModel {
    //            id: model
    //            ListElement { text: "Banana"; color: "Yellow" }
    //            ListElement { text: "Apple"; color: "Green" }
    //            ListElement { text: "Coconut"; color: "Brown" }
    //        }
    //        onAccepted: {
    //            if (find(currentText) === -1) {
    //                model.append({text: editText})
    //                currentIndex = find(editText)
    //            }
    //        }
    //    }

    ComboBox {
        anchors.centerIn: parent
        currentIndex: 2
        textRole: "text1" //cbItems.get(currentIndex).text1 /*? "" :""*/
        model:cbItems
        width: 200
        onCurrentIndexChanged: console.debug(cbItems.get(currentIndex).text1 + ", " + cbItems.get(currentIndex).color)
    }

    ListModel {
        id: cbItems

        ListElement { text1: "Banana"; color: "Yellow" }
        ListElement { text1: "Apple"; color: "Green" }
        ListElement { text1: "Coconut"; color: "Brown" }
    }



}
