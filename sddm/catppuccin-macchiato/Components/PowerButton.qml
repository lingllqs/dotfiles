import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
  implicitHeight: powerButton.height
  implicitWidth: powerButton.width
  Button {
    id: powerButton
    height: inputHeight
    width: inputHeight
    hoverEnabled: true
    icon {
      source: Qt.resolvedUrl("../icons/power.svg")
      height: height
      width: width
      color: config.black
    }
    background: Rectangle {
      id: powerButtonBackground
      radius: 3
      color: config.rosewater
    }
    states: [
      State {
        name: "hovered"
        when: powerButton.hovered
        PropertyChanges {
          target: powerButtonBackground
          color: config.surface0
        }
      }
    ]
    transitions: Transition {
      PropertyAnimation {
        properties: "color"
        duration: 300
      }
    }
    onClicked: sddm.powerOff()
  }
}
