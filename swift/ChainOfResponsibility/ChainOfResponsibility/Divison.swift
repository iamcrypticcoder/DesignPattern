import Foundation

public class Divison {
    
    var nextList = [Divison]()
    
    init() {
        
    }
    
    func addNextDivison(_ divison: Divison) -> Void {
        nextList.append(divison)
    }
    
    func handle(_ request: Request) -> Void {
        for d in nextList {
            d.handle(request)
        }
    }
    
    func processRequest() -> Void {}

}
