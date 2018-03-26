import Foundation

public class ListBox : Widget {
    private var items: [String] = [String]()
    private var selectedIndex: Int = -1
    
    func addItem(_ item: String) -> Void {
        items.append(item)
    }
    
    func selectItem(_ index: Int) -> Void {
        if index != selectedIndex {
            selectedIndex = index
            self.mediator.onChange(self)
        }
    }
    
    func getSelectedItem() -> String {
        return items[selectedIndex]
    }
    
    func toString() -> String {
        return String("Selected Item: \(items[selectedIndex])")
    }
}
