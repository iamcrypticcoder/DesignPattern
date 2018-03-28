import Foundation

class Book {
    var name: String?
    var noPages: Int = 0
    var price: Double = 0
    
    init(_ name: String, noPages: Int, price: Double) {
        self.name = name
        self.noPages = noPages
        self.price = price
    }
}
