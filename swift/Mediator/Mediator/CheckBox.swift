import Foundation

public class CheckBox : Widget {
    var state: Bool = true
    
    func setCheckedStatus(_ status: Bool) -> Void {
        if state != status {
            state = status
            self.mediator.onChange(self)
        }
    }
    
    func toString() -> String {
        return String("State: \(state)")
    }
}
