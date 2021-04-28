import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
     property int activeTab:-1

    id:rootWindow
    Root {
        id: r_rect
        width: parent.width*(1/11)
        height: parent.height
        color: Qt.darker("gray")
        anchors{
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }
        Column{
            id:clm
            height: parent.height
            width: parent.width
            Repeater{
                id:rep
                model:3
                R_btn{
                    id: c1
                    height: parent.height/rep.model
                    border.color: "black"
                    border_color:"transparent"
                    color: "gray"
                    back_color: "lightGray"
                    border.width: 1/2
                    radius_btn: 4

                    anchors.horizontalCenter: parent.horizontalCenter
                    tittle:index+1
                    src_img:"qrc:/"+(index+1)+".jfif"
                }
            }


        }
    }
    Root {
        id: l_rect
        width: parent.width*(10/11)
        height: parent.height
        color: "black"
        anchors{
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        L_panel {
            id: l_panel
        }
    }

}
