import Foundation

public class ParcelDivisonOne: Divison {
    
    override func handle(_ request: Request) -> Void {
        if request.weight <= 100 {
            processRequest()
        } else {
            super.handle(request)
        }
    }
    
    override func processRequest() -> Void {
        print("This request is processed by -- ParcelDivisonOne")
    }
}
