import Foundation

public class Button : Widget {
    var title: String = ""
    var enabledState: Bool = true
    
    func setTitle(_ title: String) -> Void {
        self.title = title
    }
    
    func setEnabledState(_ state: Bool) -> Void {
        self.enabledState = state
    }
    
    func toString() -> String {
        return String("Title: \(self.title), State: \(self.enabledState)")
    }
}
