import QtQuick 2.0

RectangleBorders {
    width: 850
    height: 45

    property string entryName
    property string entryQuality
    property string entrySpeed
    property string entryDps
    property string entryPatch
    property string entrySource
    property string entryType
    property string entryReq
    property string entryItemlvl
    property string entryIcon

    function qualityColor(quality) {
        switch (quality) {
        case "POOR":
            return root.qualityPoor
        case "COMMON":
            return root.qualityCommon
        case "UNCOMMON":
            return root.qualityUncommon
        case "RARE":
            return root.qualityRare
        case "EPIC":
            return root.qualityEpic
        case "LEGENDARY":
            return root.qualityLegendary
        default:
            return "red"
        }
    }

    rectColorHighlighted: "#232323"

    onRectangleClicked: console.log("Clicked", entryName)

    Row {

        width: parent.width - x
        height: parent.height
        x: 3

        Image {
            id: icon

            height: 40
            width: 40

            source: "Assets/items/" + entryIcon

            y: parent.height / 2 - height / 2
        }

        Rectangle {
            color: "transparent"
            height: parent.height
            width: 5
        }

        Text {
            id: textName
            text: entryName

            width: 300
            height: parent.height

            color: qualityColor(entryQuality)

            font {
                family: root.fontText
                pointSize: 10
            }

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft

        }

        Text {
            id: textDps
            text: entryDps

            width: 50
            height: parent.height

            font {
                family: root.fontText
                pointSize: 10
            }

            color: "white"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }

        Text {
            id: textSpeed
            text: entrySpeed

            width: 50
            height: parent.height

            font {
                family: root.fontText
                pointSize: 10
            }

            color: "white"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }

        Text {
            id: textPatch
            text: entryPatch

            width: 50
            height: parent.height

            font {
                family: root.fontText
                pointSize: 10
            }

            color: "white"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }

        Text {
            id: textType
            text: entryType

            width: 60
            height: parent.height

            font {
                family: root.fontText
                pointSize: 10
            }

            color: "white"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }

        Text {
            id: textSource
            text: entrySource

            width: 300
            height: parent.height
            wrapMode: Text.WordWrap

            font {
                family: root.fontText
                pointSize: 8
            }

            color: "white"

            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }
    }
}
