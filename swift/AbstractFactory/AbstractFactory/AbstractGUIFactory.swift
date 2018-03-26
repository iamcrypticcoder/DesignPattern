import Foundation

protocol AbstractGUIFactory {
    func createButton() -> Button
    func createWindow() -> Window
}
