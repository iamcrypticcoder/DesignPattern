import Foundation

public class MoneyDivison : Divison {
    
    override func handle(_ request: Request) -> Void {
        if request.money > 0  {
            processRequest()
        }
    }
    
    override func processRequest() -> Void {
        print("This request is processed by -- MoneyDivison")
    }
}
