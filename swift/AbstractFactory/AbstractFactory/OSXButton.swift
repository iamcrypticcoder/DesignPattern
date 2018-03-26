import Foundation

class OSXButton : Button {
    var title: String?
    
    init() {
        
    }
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func show() {
        print("Showing OSX style button [Title: \(self.title!)]")
    }
    
    
}
