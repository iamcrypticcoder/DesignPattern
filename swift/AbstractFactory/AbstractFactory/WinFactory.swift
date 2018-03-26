import Foundation

class WinFactory : AbstractGUIFactory {
    
    init() {
        
    }
    
    func createButton() -> Button {
        return WinButton()
    }
    
    func createWindow() -> Window {
        return WinWindow()
    }
}
