import Foundation

class WinButton: Button {
    var title: String?
    
    init() {
        
    }
    
    func setTitle(_ title: String) -> Void {
        self.title = title
    }
    
    func show() -> Void {
        print("Showing Windows style button [Title: \(self.title!)]")
    }
}
