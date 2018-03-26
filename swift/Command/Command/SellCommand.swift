import Foundation

public class SellCommand : Command {
    
    let book: Book
    
    init(_ book: Book) {
        self.book = book
    }
    
    func execute() {
        book.sell()
    }
    
}
