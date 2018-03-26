import Foundation

public class Request {
    var weight: Double = 0.0
    var money: Double = 0.0
    
    init(_ weight: Double, _ money: Double) {
        self.weight = weight
        self.money = money
    }
}
