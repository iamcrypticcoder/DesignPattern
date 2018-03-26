import Foundation

public class CourierService {
    
    let parentDivison: Divison
    
    init() {
        parentDivison = GeneralDivison()
        let div1: Divison = ParcelDivisonOne()
        let div2: Divison = ParcelDivisonTwo()
        div1.addNextDivison(div2)
        
        let div3: Divison = MoneyDivison()
        parentDivison.addNextDivison(div1)
        parentDivison.addNextDivison(div3)
    }
    
    func processOrder(_ request: Request) -> Void {
        parentDivison.handle(request)
    }
}
