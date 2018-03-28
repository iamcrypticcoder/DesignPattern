import Foundation

class AveragePageCalcVisitor : LibraryVisitor {
    var totalPage: Int = 0
    var avgPage: Double = 0.0
    
    func getAvgPage() -> Double {
        return avgPage
    }
    
    func visitBook(_ book: Book) {
        totalPage += book.noPages
    }
    
    func visitLibrary(_ library: Library) {
        avgPage = Double(totalPage) / Double(library.bookList.count)
    }
}
