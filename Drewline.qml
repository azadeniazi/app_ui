import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Rectangle{
 property  var  tittle: ""
    width: parent.width
    height: childrenRect.height
    color: "transparent"

    Text {
        id: name
        text: tittle
        color: "red"
        anchors{

            top: parent.top
            left: parent.left
        }
    }
    Rectangle{
        id:line
        anchors{
            left: name.right
            right: parent.right
            leftMargin: 10
            verticalCenter: name.verticalCenter
        }
        width: parent.width //*9/10
        height: 1
        color: "Gold"
    }

}
