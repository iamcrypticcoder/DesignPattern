import Foundation

public class Widget {
    let mediator: DialogBoxMediator
    
    init(_ med: DialogBoxMediator) {
        self.mediator = med
    }
}
