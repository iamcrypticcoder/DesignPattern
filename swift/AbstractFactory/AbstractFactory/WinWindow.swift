import Foundation

class WinWindow : Window {
    var title: String?
    
    init() {
        
    }
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func show() {
        print("Showing Windows style window [Title: \(self.title!)]")
    }

}
