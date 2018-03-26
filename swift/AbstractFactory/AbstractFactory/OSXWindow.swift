import Foundation

class OSXWindow : Window {
    var title: String?
    
    func setTitle(_ title: String) {
        self.title = title
    }

    func show() {
        print("Showing OSX style window [Title: \(self.title!)]")
    }
}
