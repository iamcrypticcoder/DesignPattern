import Foundation

public class ParcelDivisonTwo : Divison {
    
    override func handle(_ request: Request) -> Void {
        if request.weight > 0 {
            processRequest()
        }
    }
    
    override func processRequest() -> Void {
        print("This request is processed by -- ParcelDivisonTwo")
    }
}
