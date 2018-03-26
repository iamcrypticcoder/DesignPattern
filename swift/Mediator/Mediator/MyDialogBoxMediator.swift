import Foundation

public class MyDialogBoxMediator : DialogBoxMediator {
    var listBox: ListBox? = nil
    var checkBox: CheckBox? = nil
    var button: Button? = nil
    
    func onChange(_ originator: Widget) {
        if originator is ListBox {
            let listBox: ListBox = originator as! ListBox
            let item: String = listBox.getSelectedItem()
            button?.setTitle(item)
            return
        }
        
        if originator is CheckBox {
            let checkBox: CheckBox = originator as! CheckBox
            button?.setEnabledState(checkBox.state)
            return
        }
    }
}
