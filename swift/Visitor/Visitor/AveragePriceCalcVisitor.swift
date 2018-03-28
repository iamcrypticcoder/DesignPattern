import Foundation

class AveragePriceCalcVisitor : LibraryVisitor {
    var totalPrice: Double = 0.0
    var avgPrice: Double = 0.0
    
    func getAvgPrice() -> Double {
        return avgPrice
    }
    
    func visitBook(_ book: Book) {
        totalPrice += Double(book.price)
    }
    
    func visitLibrary(_ library: Library) {
        avgPrice = totalPrice / Double(library.bookList.count)
    }
}
