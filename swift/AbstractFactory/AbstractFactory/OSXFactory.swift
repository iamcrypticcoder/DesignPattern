import Foundation

class OSXFactory : AbstractGUIFactory {
    
    init() {
        
    }
    
    func createButton() -> Button {
        return OSXButton()
    }
    
    func createWindow() -> Window {
        return OSXWindow()
    }
}
