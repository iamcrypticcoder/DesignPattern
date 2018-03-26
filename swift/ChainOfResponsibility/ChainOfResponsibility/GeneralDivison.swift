import Foundation

public class GeneralDivison : Divison {
    
    override func handle(_ request: Request) {
        if request.weight <= 10 && request.money <= 1000 {
            processRequest()
        } else {
            super.handle(request)
        }
    }
    
    override func processRequest() {
        print("This request is processed by -- General Divison")
    }
}
