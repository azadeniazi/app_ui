import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
Rectangle{
      property int activetabsampels: -1
     property int activetabcolor: -1
    id:l_panel
    height: parent.height
    width: parent.width
    color: "transparent"

    Rectangle{
        id:rect1
        height:parent.height
        width: parent.width*(1/2)

        color: "transparent"
        Column{
            height: parent.height
            width: parent.width
            spacing: 5
            Rectangle{
                height: parent.height *(1/2)
                width: parent.width
                color:"transparent"

            }

            Drewline{
                tittle: "Samplels"
            }
            Grid {

                id: grid
                columns: 5
                spacing: 7

                leftPadding:width * 1/10
                rightPadding: width * 1/10
                topPadding: height *1/10
                bottomPadding: height *1/10
                //columnSpacing: 3
                height: parent.height *(1/6)
                width: parent.width
                //anchors.centerIn: parent
                Repeater{
                    id:rep2
                    model:10

                    height: parent.height
                    width: parent.width
                    //                    onWidthChanged: console.log("h: " +height + " W:" + width)

                    Samplels{
                        id: l_rect_btn
                        height: (parent.height / 2)-((width * 1/10)*2)
                        width:  (parent.width /(5))-((height *1/10)*2)

                        border.color: "green"
                        border.width: 1
                        radius_btn: 3
                        radius:radius_btn
                        border_color:"black"
                        color: "gray"
                        back_color: "lightGray"
                        tittle:index+1
                    }
                }
            }
            Drewline{
                tittle: "Color"
            }
            Grid{
                id: grid1
                columns: 5
                //columnSpacing: 3
                height: parent.height *(1/6)
                width: parent.width
                spacing: 7

                leftPadding:width * 1/10
                rightPadding: width * 1/10
                topPadding: height *1/10
                bottomPadding: height *1/10
                //anchors.centerIn: parent
                Repeater{
                    id:rep3
                    model: ["red", "blue", "cyan","Magenta","yellow","green","white","gray","darkRed","orange"]
                    height: parent.height
                    width: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    Color_btn {
                        id: color_btn
                        height: (parent.height / 2)-((width * 1/10)*2)
                        width:  (parent.width /(5))-((height *1/10)*2)
                        radius_btn: 3
                        radius:radius_btn
                        border_color:"black"
                        color: modelData
                        back_color: Qt.lighter(modelData,1.7)
                        tittle:index+1
                    }
                }
            }
        }
    }
    Rectangle{
        id:rect2
        height:parent.height *(1/2)
        width: parent.width
        color: "transparent"

        anchors{
            top:parent.top
            left: rect1.right
        }

    }
}
