
import Foundation

let guiBuilder: GUIBuilder = GUIBuilder(platform: "Windows")

let window: Window = guiBuilder.buildWindow()
window.setTitle("Mahbub")
window.show()

let button: Button = guiBuilder.buildButton()
button.setTitle("Connect")
button.show()
